'use strict';

/**
 * recipe controller
 */
const utils = require('@strapi/utils');

const { Configuration, OpenAIApi } = require("openai");
const { getService } = require('@strapi/plugin-users-permissions/server/utils');
const configuration = new Configuration({
    apiKey: "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",
});
const openai = new OpenAIApi(configuration);
const { getAbsoluteAdminUrl, getAbsoluteServerUrl, sanitize, NotFoundError } = utils;

const { createCoreController } = require('@strapi/strapi').factories;
const sanitizeOutput = (user, ctx) => {
    const schema = strapi.getModel('plugin::users-permissions.user');
    const { auth } = ctx.state;

    return sanitize.contentAPI.output(user, schema, { auth });
};


module.exports = createCoreController('api::recipe.recipe',({strapi})=>({

    // async create(ctx) {
    //     const { data } = ctx.request.body;

        

    //     console.log(data);

    //     const rr = await strapi.service('api::recipe.recipe').create({data:data});
    //     return {
    //         data
    //     };
    // },

    // override the create method and inject the current user id
    async searchai(ctx) {
        

        // get query param from called q
        const query = ctx.query._q;

        let p = `Please give me recipe for ${query}. Please include: short summary, ingredients, instructions, nutrition information and cook time.`;
        let pb = `
        
            Please provide the following details for any ${query} recipe:
            - Summary:
            - Ingredients (separated by |||):
            - Optional Ingredients (if any, separated by |||):
            - Directions (separated by |||):
            - Cook Time:
            - Servings:
            - Nutritional Information (separated by |||):
            - Note (if any):
            
            Please provide your response in a valid json format only in the following format:
            {
                "summary": "String",
                "ingredients": "String",
                "optional_ingredients": "String",
                "directions": "String",
                "cook_time": "String",
                "servings": "String",
                "nutritional_information": "String",
                "note": "String"
            }
            
            Please don't add any other information in the response. Only a a valid json.
        `;
        const response = await openai.createCompletion({
            model: "text-davinci-003",
            prompt: pb,
            max_tokens: 2000,
            temperature: 0
        });

        console.log(response.data.choices[0].text);

        let jsonData = response.data.choices[0].text;



        // p = `Please give me recipe for ${query}. Please only and only give me the instructions of the recipe.`;
        // const ins = await openai.createCompletion({
        //     model: "text-davinci-003",
        //     prompt: p,
        //     max_tokens: 256,
        //     temperature: 0
        // });

        // p = `Please give me a short summary for this recipe: ${query}.`;
        // const des = await openai.createCompletion({
        //     model: "text-davinci-003",
        //     prompt: p,
        //     max_tokens: 256,
        //     temperature: 0
        // });

        // create recipe

        // console.log(response.data.choices[0].text);

        // var text = response.data.choices[0].text;


        // const database_keys = ["description", "ingredients",  "directions", "cook_time", "nutritional_information", "note"];
        // const possible_keys = ["Summary:", "Ingredients:",  "Instructions:", "Cook Time:", "Nutrition Information:", "Note:"];
        // const possible_keys_values = ["", "", "", "", "", "", "", "", ""];

        // for (let i = 0; i < possible_keys.length; i++) {
        //     if (text.includes(possible_keys[i])) {
        //         let vall = text.split(possible_keys[i])[1];
        //         for (let j = 0; j < possible_keys.length; j++) {
        //         if (vall.includes(possible_keys[j])) {
        //             vall = vall.split(possible_keys[j])[0].trim();
        //             break;
        //         }
        //         }
        //         possible_keys_values[i] = vall;
        //     }
        // }

        // // construct res from database_keys with possible_keys_values
        // const res = {};
        // for (let i = 0; i < database_keys.length; i++) {
        //     res[database_keys[i]] = possible_keys_values[i];
        // }

        // get only part after { and before }
        jsonData = jsonData.split('{')[1].split('}')[0];

        // add { and } back
        jsonData = '{'+jsonData+'}';

        jsonData = JSON.parse(jsonData);

        
        console.log(jsonData['summary']);
        const data = {
            title:query,
            description:jsonData['summary'].replaceAll('|||', '\n'),
            ingredients:jsonData['ingredients'].replaceAll('|||', '\n'),
            directions:jsonData['directions'].replaceAll('|||', '\n'),
            cook_time:jsonData['cook_time'].replaceAll('|||', '\n'),
            nutritional_information:jsonData['nutritional_information'].replaceAll('|||', '\n'),
            note:jsonData['note'].replaceAll('|||', '\n'),
            sub_category:3,
            ai:true
        }




        const responsse = await strapi.service('api::recipe.recipe').create({data:data});



        const type="search";

        let trial = false;

        // get the current user
        const user = ctx.state.user;

        // console.log(user.aisearches);

        // my subscriptions
        const subscriptions = await strapi.db.query('api::subscription.subscription').findMany({where:{users_permissions_user:ctx.state.user.id, active:true}, populate:{
            plan:{
                populate:['aisearches']
            }
        }});

        if(subscriptions.length==0){
            trial = true;
        }
        let updated = null;
        // get the first subscription
        const subscription = subscriptions[0];
        console.log('subscription')
        console.log(subscription)
        // get the plan
        if(!trial && subscription.aisearches.length<subscription.plan.aisearches){

            // update the subscription
            updated = await strapi.db.query('api::subscription.subscription').update({where:{id:subscription.id}, data:{searches:subscription.searches+1}});
        }else{


            // get current user from database
            const user = await strapi.db.query('plugin::users-permissions.user').findOne({where:{id:ctx.state.user.id}, populate:['downloads','searches','saves', 'aisearches']});
            const freemium = await strapi.db.query('api::freemium.freemium').findOne({where:{id:1}});
            

            if(type=='search'){
                // get the searches
                const searches = user.aisearches;

                // count the searches
                const searches_count = searches.length;

                // check if the user has more searches than the plan
                if(searches_count>=freemium.aisearches){
                    throw new Error('No more '+type+'s left');
                }
            }

        }


        if(type=='search'){
            let sdata = {data:{users_permissions_user:ctx.state.user.id, trial, search:ctx.request.body.search}};
            if(!trial){
                sdata.data.subscription = subscription.id;
                sdata.data.trial = false;
            }
            await strapi.service('api::aisearch.aisearch').create(sdata);
        }

        return {
            query:query,
            recipe:responsse
        }
    },

    async updateprofile(ctx) {

        const user_id = ctx.state.user.id;

        const {
            fullname,
            phone,
            address
        } = ctx.request.body;


        const user = await getService('user').fetch(user_id);

        if(!user){
            throw new Error('User not found');
        }

        await getService('user').edit(user.id, {
            fullname,
            phone,
            address
            });
        
        let user2 = strapi.db.query('plugin::users-permissions.user').findOne({where:{id:ctx.state.user.id}, populate:{
            downloads:{
                populate:['recipe']
            },
            searches:{
                populate:['recipe']
            },
            saves:{
                populate:['recipe']
            },
            aisearches:{
                populate:['recipe']
            },
            subscriptions:{
                populate:{
                    plan:{

                    }
                }
            }

            
        }});
        const sanitizedData = await sanitizeOutput(user2, ctx);

        // remove a field called password
        user2.password = undefined;
        return user2
        ctx.send(sanitizedData);
    },

    async deletemyaccount(ctx) {

        const user_id = ctx.state.user.id;

        const {
            reason
        } = ctx.request.body;


        const user = await getService('user').fetch(user_id);

        if(!user){
            throw new Error('User not found');
        }

        const timestamp = new Date().getTime();

        await getService('user').edit(user.id, {
            email:`a-delete-user-${timestamp}@.thechefsrecipes.com`,
            username:`a-delete-user-${timestamp}`,
            fullname:`a-delete-user-${timestamp}`,
            phone:`a-delete-user-${timestamp}`,
            address:`a-delete-user-${timestamp}`,
            delete_reason:reason
            });
        
        return {
            done:'yes'
        }
        ctx.send(sanitizedData);
    },
    async deletemyaccount2(ctx) {

        const user_id = ctx.state.user.id;

        const {
            reason
        } = ctx.request.body;


        const user = await getService('user').fetch(user_id);

        if(!user){
            throw new Error('User not found');
        }

        const timestamp = new Date().getTime();

        await getService('user').edit(user.id, {
            email:`a-delete-user-${timestamp}@.thechefsrecipes.com`,
            username:`a-delete-user-${timestamp}`,
            fullname:`a-delete-user-${timestamp}`,
            phone:`a-delete-user-${timestamp}`,
            address:`a-delete-user-${timestamp}`,
            delete_reason:reason
            });
        
        return {
            done:'yes'
        }
        ctx.send(sanitizedData);
    },
    async deletemyaccount3(ctx) {

        const user_id = ctx.state.user.id;

        const {
            reason
        } = ctx.request.body;


        const user = await getService('user').fetch(user_id);

        if(!user){
            throw new Error('User not found');
        }

        const timestamp = new Date().getTime();

        await getService('user').edit(user.id, {
            email:`a-deleted-user-${timestamp}@thechefsrecipes.com`,
            username:`a-deleted-user-${timestamp}`,
            fullname:`a-deleted-user-${timestamp}`,
            phone:`a-deleted-user-${timestamp}`,
            address:`a-deleted-user-${timestamp}`,
            delete_reason:reason
            });
        
        return {
            done:'yes'
        }
        ctx.send(sanitizedData);
    },
}));

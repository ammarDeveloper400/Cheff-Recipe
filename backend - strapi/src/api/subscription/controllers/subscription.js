'use strict';

const { default: axios } = require('axios');

/**
 * subscription controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::subscription.subscription',({strapi})=>({

    // override the create method and inject the current user id
    async create(ctx) {

        const {checkoutSessionId,payload} = ctx.request.body

        const url = process.env.URL || 'http://localhost:1700/';

        const session = await axios.get(`${url}strapi-stripe/retrieveCheckoutSession/${checkoutSessionId}`);

        if(session.data.status!='complete'){
            throw new Error('Session not complete');
            
        }


        const productId = payload.metadata.productId

        const plan = await strapi.db.query('api::plan.plan').findOne({where:{stripe_id:productId}});

        if(!plan){
            throw new Error('Plan not found');
        }

        const created_stamp = payload.created;
        const expires_stamp = payload.expires_at;

        const created_date = new Date(created_stamp*1000);
        let expires_date = new Date(expires_stamp*1000);

        expires_date.setDate(expires_date.getDate() + plan.days);

        // format the date to yyyy-mm-dd

        const year_created = created_date.getFullYear();
        const month_created = created_date.getMonth()+1;
        const day_created = created_date.getDate();

        if(month_created<10){
            var month_created_formatted = '0'+month_created;
        }else{
            var month_created_formatted = month_created;
        }

        if(day_created<10){
            var day_created_formatted = '0'+day_created;
        }else{
            var day_created_formatted = day_created;
        }

        const created_date_formatted = year_created+'-'+month_created_formatted+'-'+day_created_formatted;


        const year_expires = expires_date.getFullYear();
        const month_expires = expires_date.getMonth()+1;
        const day_expires = expires_date.getDate();

        if(month_expires<10){
            var month_expires_formatted = '0'+month_expires;
        }else{
            var month_expires_formatted = month_expires;
        }

        if(day_expires<10){
            var day_expires_formatted = '0'+day_expires;
        }else{
            var day_expires_formatted = day_expires;
        }

        const expires_date_formatted = year_expires+'-'+month_expires_formatted+'-'+day_expires_formatted;


        
        console.log(created_date_formatted)

        const data = {
            data:{
                users_permissions_user:ctx.state.user.id,
                plan:plan.id,
                subscribed_at:created_date_formatted,
                expires:expires_date_formatted,
                days:plan.days,
                amount_paid:payload.amount_total/100,
                saves:0,
                searches:0,
                downloads:0,
                active:true
            }
        }

        const response = await strapi.service('api::subscription.subscription').create(data);
        return response;
    },
    async find(ctx) {
        const response = await strapi.db.query('api::subscription.subscription').findMany({where:{users_permissions_user:ctx?.state?.user?.id}, populate:{
            plan:{
                populate:['image','plan_benefits']
            }
        }});
        return response;
    },

    // delete a save
    async delete(ctx) {
        console.log(ctx.params.id);
        const response = await strapi.db.query('api::subscription.subscription').delete({where:{id:ctx.params.id, users_permissions_user:ctx.state.user.id}});
        return response;
    },

    // delete a save
    async update(ctx) {
        console.log("lolo");
        return ctx.request.body;
    },

    // delete a save
    async unsubscribe(ctx) {
        const {id} =  ctx.request.body;
        const response = await strapi.db.query('api::subscription.subscription').update({where:{id:id, users_permissions_user:ctx.state.user.id}, data:{active:false, refund_requested:true,unsubscribe_msg:ctx.request.body.msg}});
        return response;
    },

    // delete a save
    async consume(ctx) {
        const {type} = ctx.request.body;
        let subscription = null;

        let trial = false;

        // my subscriptions
        const subscriptions = await strapi.db.query('api::subscription.subscription').findMany({where:{users_permissions_user:ctx.state.user.id, active:true}, populate:['plan']});

        if(subscriptions.length==0){
            trial = true;
        }else{
            
        }
        let updated = null;

        if(!trial){

            // get the first subscription
            subscription = subscriptions[0];

            // get the plan
            const plan = subscription.plan;
            if(type=='download' && subscription.downloads<plan.downloads){
                // update the subscription
                updated = await strapi.db.query('api::subscription.subscription').update({where:{id:subscription.id}, data:{downloads:subscription.downloads+1}});
            }else if(type=='search' && subscription.searches<plan.searches){
                // update the subscription
                updated = await strapi.db.query('api::subscription.subscription').update({where:{id:subscription.id}, data:{searches:subscription.searches+1}});
            }else if(type=='save' && subscription.saves<plan.saves){
                // update the subscription
                updated = await strapi.db.query('api::subscription.subscription').update({where:{id:subscription.id}, data:{saves:subscription.saves+1}});
            } 
        }
        else{

            trial = true;
            


            // get current user from database
            const user = await strapi.db.query('plugin::users-permissions.user').findOne({where:{id:ctx.state.user.id}, populate:['downloads','searches','saves', 'aisearches']});
            const freemium = await strapi.db.query('api::freemium.freemium').findOne({where:{id:1}});
            if(type=='download'){
                // get the downloads
                const downloads = user.downloads;

                // count the downloads
                const downloads_count = downloads.length;

                // check if the user has more downloads than the plan
                if(downloads_count>=freemium.downloads){
                    throw new Error('No more '+type+'s left');
                }

                
            }

            if(type=='search'){
                // get the searches
                const searches = user.searches;

                // count the searches
                const searches_count = searches.length;

                // check if the user has more searches than the plan
                if(searches_count>=freemium.searches){
                    throw new Error('No more '+type+'s left');
                }
            }

            if(type=='save'){
                // get the saves
                const saves = user.saves;

                // count the saves
                const saves_count = saves.length;

                // check if the user has more saves than the plan
                if(saves_count>=freemium.saves){
                    throw new Error('No more '+type+'s left');
                }
            }
        }

        if(type=='download'){
            let ddata = {data:{user_id:ctx.state.user.id, trial, recipe:ctx.request.body.recipe}};
            if(!trial){
                ddata.data.subscription = subscription.id;
            }
            await strapi.service('api::download.download').create(ddata);
        }

        if(type=='search'){
            let sdata = {data:{user_id:ctx.state.user.id, trial, search:ctx.request.body.search}};
            if(!trial){
                sdata.data.subscription = subscription.id;
            }
            await strapi.service('api::search.search').create(sdata);
        }

        if(type=='save'){
            let sdata = {data:{user_id:ctx.state.user.id, trial, recipe:ctx.request.body.recipe}};
            if(!trial){
                sdata.data.subscription = subscription.id;
            }
            console.log("lolo saved");
            console.log(sdata);
            await strapi.service('api::save.save').create(sdata);
        }


        return {
            done:true,
            trial,
            updated
        };

    },


}));
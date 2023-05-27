'use strict';

/**
 * save controller
 */

const { createCoreController } = require('@strapi/strapi').factories;


module.exports = createCoreController('api::save.save',({strapi})=>({

    // override the create method and inject the current user id
    async create(ctx) {
        ctx.request.body.data.user_id = ctx.state.user.id;
        const response = await strapi.service('api::save.save').create({data:ctx.request.body.data});
        return response;
    },
    async find(ctx) {
        const response = await strapi.db.query('api::save.save').findMany({where:{user_id:ctx.state.user.id}, populate:{
            recipe:{
                populate:['image']
            }
        }});
        return response;
    },

    // delete a save
    async delete(ctx) {
        console.log(ctx.params.id);
        const response = await strapi.db.query('api::save.save').delete({where:{id:ctx.params.id, user_id:ctx.state.user.id}});
        return response;
    }


}));
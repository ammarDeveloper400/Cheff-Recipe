'use strict';

/**
 * download controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::download.download',({strapi})=>({

    // override the create method and inject the current user id
    async create(ctx) {
        ctx.request.body.data.user_id = ctx.state.user.id;
        const response = await strapi.service('api::download.download').create({data:ctx.request.body.data});
        return response;
    },
    async find(ctx) {
        const response = await strapi.db.query('api::download.download').findMany({where:{user_id:ctx.state.user.id}, populate:{
            recipe:{
                populate:['image']
            }
        }});
        return response;
    },

}));
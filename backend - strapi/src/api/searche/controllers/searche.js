'use strict';

/**
 * searche controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::searche.searche',({strapi})=>({

    // override the create method and inject the current user id
    async create(ctx) {
        ctx.request.body.data.user_id = ctx.state.user.id;
        const response = await strapi.service('api::searche.searche').create({data:ctx.request.body.data});
        return response;
    },
    async find(ctx) {
        const response = await strapi.db.query('api::searche.searche').findMany({where:{user_id:ctx.state.user.id}});
        return response;
    },

}));

'use strict';

/**
 * print controller
 */

const { createCoreController } = require('@strapi/strapi').factories;



module.exports = createCoreController('api::print.print',({strapi})=>({

    // override the create method and inject the current user id
    async create(ctx) {
        ctx.request.body.data.user_id = ctx.state.user.id;
        const response = await strapi.service('api::print.print').create({data:ctx.request.body.data});
        return response;
    },

}));

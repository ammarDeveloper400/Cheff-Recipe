'use strict';

/**
 * aisearch service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::aisearch.aisearch');

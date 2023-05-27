'use strict';

/**
 * freemium service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::freemium.freemium');

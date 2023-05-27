module.exports = ({ env }) => [
  'strapi::errors',
  'strapi::security',
  {
    name: 'strapi::security',
    config: {
      contentSecurityPolicy: {
        directives: {
          'script-src': ["'self'", "'unsafe-inline'", 'cdn.jsdelivr.net'],
          'img-src': ["'self'", 'data:', 'blob:', 'cdn.jsdelivr.net', 'strapi.io', `${env('AWS_BUCKET')}.s3.${env('AWS_REGION')}.amazonaws.com`],
          'media-src': ["'self'", 'data:', 'blob:', 'cdn.jsdelivr.net', 'strapi.io', `${env('AWS_BUCKET')}.s3.${env('AWS_REGION')}.amazonaws.com`],
          'frame-src': ["'self'", 'coral-app-udls2.ondigitalocean.app'],
          upgradeInsecureRequests: null,

        },
      }
    },
  },
  {
    name: 'strapi::cors',
    config: {
      enabled: true,
      headers: '*',
      origin: ['*']
    }
  },
  'strapi::poweredBy',
  'strapi::logger',
  'strapi::query',
  'strapi::body',
  'strapi::session',
  'strapi::favicon',
  'strapi::public',
];

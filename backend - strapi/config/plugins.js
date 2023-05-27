module.exports = ({ env }) => ({
    upload: {
        config: {
            provider: 'aws-s3', // For community providers pass the full package name (e.g. provider: 'strapi-provider-upload-google-cloud-storage')
            providerOptions: {
                accessKeyId: env('AWS2_ACCESS_KEY_ID'),
                secretAccessKey: env('AWS2_ACCESS_SECRET'),
                region: env('AWS2_REGION'),
                params: {
                    Bucket: env('AWS2_BUCKET'),
                },
            },
        },
    },

    io: {
        enabled: true,
        config: {
            IOServerOptions :{
                cors: { origin: "*", "methods": "GET,HEAD,PUT,PATCH,POST" },
            },
            contentTypes: {
                "order":["update"]
            },
            events:[
                {
                    name: "connection",
                    handler: ({ strapi }, socket) => {
                        console.log("New connection" + socket.id);
                        strapi.log.info(`[io] new connection with id ${socket.id}`);
                    },
                },
            ]
        },
    },

    email: {
        config: {
            provider: 'sendgrid',
            providerOptions: {
                apiKey: "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",
            },
            settings: {
                defaultFrom: 'estamart42@gmail.com',
                defaultReplyTo: 'estamart42@gmail.com',
            },
        },
    },

    "strapi-paypal": {
        enabled: true,
        config: {
            paypalSandBoxUrl:
            env("PAYPAL_SANDBOX_API_URL") || "https://api-m.sandbox.paypal.com",
            paypalLiveUrl: env("PAYPAL_LIVE_API_URL") || "https://api-m.paypal.com",
        },
    },
    'analytics': {
        enabled: true,
        resolve: './src/plugins/analytics'
    },
    'ckeditor': {
        enabled: true,
        resolve: "./src/plugins/strapi-plugin-ckeditor"
    },
    // ...
});
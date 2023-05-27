module.exports = {
    routes: [
        { 
            method: 'PUT',
            path: '/subscriptions/consume',
            handler: 'subscription.consume',
        },
        { 
            method: 'PUT',
            path: '/subscriptions/unsubscribe',
            handler: 'subscription.unsubscribe',
        }
    ]
}
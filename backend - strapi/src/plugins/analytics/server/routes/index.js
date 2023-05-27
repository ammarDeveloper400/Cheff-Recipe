module.exports = [
  {
    method: 'GET',
    path: '/',
    handler: 'myController.index',
    config: {
      policies: [],
      auth: false
    },
  },

  {
    method: 'GET',
    path: '/getSubscriptions',
    handler: 'myController.getSubscriptions',
    config: {
      policies: [],
      auth: false
    },
  },
  {
    method: 'GET',
    path: '/getSubscriptions2',
    handler: 'myController.getSubscriptions2',
    config: {
      policies: [],
      auth: false
    },
  },
  {
    method: 'GET',
    path: '/getDownloads',
    handler: 'myController.getDownloads',
    config: {
      policies: [],
      auth: false
    },
  },
  {
    method: 'GET',
    path: '/getUsers',
    handler: 'myController.getUsers',
    config: {
      policies: [],
      auth: false
    },
  },
  {
    method: 'GET',
    path: '/getExpiringSubs',
    handler: 'myController.getExpiringSubs',
    config: {
      policies: [],
      auth: false
    },
  },
  {
    method: 'GET',
    path: '/getPrints',
    handler: 'myController.getPrints',
    config: {
      policies: [],
      auth: false
    },
  },
];

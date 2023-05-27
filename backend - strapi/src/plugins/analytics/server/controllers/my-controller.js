'use strict';

module.exports = {
  index(ctx) {
    ctx.body = strapi
      .plugin('analytics')
      .service('myService')
      .getWelcomeMessage();
  },

  async getSubscriptions(ctx) {

    const response = await strapi.db.query('api::subscription.subscription').findMany({populate:{
      plan:{
          populate:['image']
      }
  }});
  
  return response;
  },

  async getSubscriptions2(ctx) {
      let url = ctx.request.url;
      let url_parts = url.split('?');
      let query = url_parts[1];

      let params = query.split('&');
      let date = params[0].split('=')[1];



      console.log(date);



    const response = await strapi.db.query('api::subscription.subscription').findMany({
      where:{
        created_at: {
          $gte: date
        }
      },
      populate:{
        plan:{
            populate:['image']
        }
      }
    });
    
    return response;
  },

  async getDownloads(ctx) {
    let url = ctx.request.url;
    let url_parts = url.split('?');
    let query = url_parts[1];

    let params = query.split('&');
    let date = params[0].split('=')[1];



    console.log(date);



    const response = await strapi.db.query('api::download.download').findMany({
      where:{
        created_at: {
          $gte: date
        }
      }
    });

    
    return response;
  },

  async getPrints(ctx) {
    let url = ctx.request.url;
    let url_parts = url.split('?');
    let query = url_parts[1];

    let params = query.split('&');
    let date = params[0].split('=')[1];



    console.log(date);



    const response = await strapi.db.query('api::print.print').findMany({
      where:{
        created_at: {
          $gte: date
        }
      }
    });

    
    return response;
  },

  async getExpiringSubs(ctx) {
    


    let todayDate = new Date();
    let todayISO = todayDate.toISOString();

    let next2Days = new Date();
    next2Days.setDate(next2Days.getDate() + 2);


    // convert next2Days to 2023-03-11 formate
    const year_expires = next2Days.getFullYear();
    const month_expires = next2Days.getMonth()+1;
    const day_expires = next2Days.getDate();

    if(month_expires<10){


        var month_expires_formatted = '0'+month_expires;
    }else{

        var month_expires_formatted = month_expires;
    }

    if(day_expires<10){

        var day_expires_formatted = '0'+day_expires;
    }else{


        var day_expires_formatted = day_expires;
    }

    const next2Days_formatted = year_expires+'-'+month_expires_formatted+'-'+day_expires_formatted;


    const response = await strapi.db.query('api::subscription.subscription').findMany({
      where:{
        expires: {
          $lte: next2Days_formatted,
          $gte: todayISO
        },
        active: true
      }
    });

    
    return response;
  },
  

  async getUsers(ctx) {
    let url = ctx.request.url;
    let url_parts = url.split('?');
    let query = url_parts[1];

    let params = query.split('&');
    let date = params[0].split('=')[1];



    console.log({
      where:{
        created_at: {
          $gte: date
        }
      }
    });



    const response = await strapi.db.query('plugin::users-permissions.user').findMany({
      where:{
        created_at: {
          $gte: date
        }
      }
    });

    const response_active = await strapi.db.query('plugin::users-permissions.user').findMany({
      where:{
        updated_at: {
          $gte: date
        }
      }
    });
    
    return {users:response, active_users:response_active};
  },
  
  
};

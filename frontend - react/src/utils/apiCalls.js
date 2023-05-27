import { doConsole } from "./../utils/functions"
const { urls } = require("../utils/Api_urls");

/*
@param {string} url - The url to be called
@param {string} method - The method to be used (GET, POST, PUT, DELETE)
@param {object} body - The body of the request

*/
export async function api(url_plus, body_data, method, token=null) {

  doConsole(" I request @ " + urls.API + url_plus);
  doConsole(body_data);

  let headers = {
    Accept: '*/*',
    'Content-Type': 'application/json',
  };

  if(token !== null) {
    headers["Authorization"] = "Bearer " + token;
  }
  doConsole(headers);
  let hasError = false;

  let others = {
    method: method || 'POST',
    headers: headers,
    
  }

  if(body_data !== null) {
    others["body"] = JSON.stringify(body_data);
  }
  const { isError, data } = await fetch(urls.API + url_plus, others)
  .then((response) => {
    let r = response;
    hasError = response.status !== 200 && response.status !== 201;
    return r.json()
  })
    .then((responseJson) => {
      console.log(responseJson)

      if(hasError) {
        return {isError: true, data: responseJson};
      }
      return { isError: false, data: responseJson }
    }).catch((error) => {
      console.log('error is')
      return { isError: true, data: error }
    });
  return { isError, data };
}


export async function apiAbsolute(url_plus, body_data, method, token=null) {

  doConsole(" I request @ " +  url_plus);
  doConsole(body_data);

  let headers = {
    Accept: '*/*',
    'Content-Type': 'application/json',
  };

  if(token !== null) {
    headers["Authorization"] = "Bearer " + token;
  }
  doConsole(headers);
  let hasError = false;

  let others = {
    method: method || 'POST',
    headers: headers,
    
  }

  if(body_data !== null) {
    others["body"] = JSON.stringify(body_data);
  }
  const { isError, data } = await fetch(url_plus, others)
  .then((response) => {
    let r = response;
    hasError = response.status !== 200 && response.status !== 201;
    return r.json()
  })
    .then((responseJson) => {
      console.log(responseJson)

      if(hasError) {
        return {isError: true, data: responseJson};
      }
      return { isError: false, data: responseJson }
    }).catch((error) => {
      console.log('error is')
      return { isError: true, data: error }
    });
  return { isError, data };
}


export async function upload(file,token="",path) {

  console.log(file);
  return;
  // var response = this.state.selected_modal_image[0];
  // var my_ext = response.uri.split('.');

  // var _ext = my_ext[my_ext.length - 1];


  // var real_name = response.uri.split('/');
  // var _real_name = real_name[real_name.length - 1];



  // const formData = new FormData();

  // formData.append("photo", {
  //   name: _real_name,
  //   type: Platform.OS === "android" ? "image/jpeg" : response.type,
  //   uri:Platform.OS === "android" ? response.uri : response.uri.replace("file://", "")
  // });
  // formData.append("token", token);
  // formData.append("path", path);

  // console.log("this is wat I'm submitting");
  // console.log(formData);
  // const config = {
  //   method: 'POST',
  //   headers: {
  //     'Accept': 'application/json',
  //     'Content-Type': 'multipart/form-data',
  //   },
  //   body: formData
  // };




  // console.log(" I request @ " + urls.API + url_plus);
  // console.log(config);
  // var {isError, data} = await fetch(urls.API + url_plus, config).then((response) => response.json())
  //   .then((responseJson) => {
  //       console.log("Data did come")
  //       console.log(responseJson)
  //     return {isError:false,data:responseJson}
  //   }).catch((error) => {
  //     return {isError:true,data:{}}
  //   });
  // return {isError,data};
}
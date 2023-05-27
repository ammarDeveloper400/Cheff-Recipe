// importing local storage
import { useState, useCallback } from 'react';

// local storage function that retreives the data
export async function retrieveItem(key) {
  try {
    const retrievedItem = localStorage.getItem(key);
    const item = JSON.parse(retrievedItem);
    return item;
  } catch (error) {
    console.log(error.message);
  }
  return
}


// store data in lcoalstorage
export async function storeItem(key, item) {
  try {
    var jsonOfItem = localStorage.setItem(key, JSON.stringify(item));
    return jsonOfItem;
  } catch (error) {
    console.log(error.message);
  }
}


//validing email
export function validateEmail(text) {
  console.log(text);
  let reg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  if (reg.test(text) === false) {

    return false;
  }
  else {
    return true;
  }
}


export const useForceUpdate = () => {
  const [, updateState] = useState();
  return useCallback(() => updateState({}), []);
}




export function formatDate(dateObj) {
  var month = dateObj.getMonth() + 1;
  if (month < 10) {
      month = "0" + month;
      if (dateObj.getDate() < 10) {
          const dat = "0" + dateObj.getDate();
          let date = dateObj.getFullYear() + "-" + month + "-" + dat;
          return date
      }
      else {
          let date = dateObj.getFullYear() + "-" + month + "-" + dateObj.getDate()
          return date
      }
  }
  else {
      if (dateObj.getDate() < 10) {
          const dat = "0" + dateObj.getDate()
          let date = dateObj.getFullYear() + "-" + month + "-" + dat
          return date
      }
      else {
          let date = dateObj.getFullYear() + "-" + month + "-" + dateObj.getDate()
          return date
      }

  }
}

export function doConsole(e) {
  console.log(e);
};


// common Navigations




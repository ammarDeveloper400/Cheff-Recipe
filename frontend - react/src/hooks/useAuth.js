import { useEffect, useState } from "react";
import {api} from "../utils/apiCalls";

export default function useAuth() {
    let prev = localStorage.getItem("auth") || null;
    const [loggedObject, setLoggedObjectFinal] = useState(prev);

    const checkLogin = async () => {
        const token = getLoggedObject()?.jwt;
        const {isError, data} = await api('users/me?populate[subscriptions][populate][0]=plan&populate[aisearches]=*&populate[pic]=*', null, 'GET', token);
        console.log('check login:', data);
        console.log(isError);
        if(!isError) {
            let dd = data;
            dd.jwt=token;
            console.log('check login: final;', dd);
            setLoggedObject(dd);
        }

        return !isError;
    }

    const setLoggedObject = (obj) => {
        if(obj === null){
            setLoggedObjectFinal(null);
        } else setLoggedObjectFinal(JSON.stringify(obj));
    }
    const getLoggedObject = () => {
        return JSON.parse(loggedObject);
    }
    const isLoggedIn = getLoggedObject() !== null;


    
    useEffect(()=>{
        // if(loggedObject==prev){
        //     return;
        // }

        console.log('updated logged object', loggedObject);
        localStorage.setItem("auth", loggedObject);
        prev = loggedObject;
    },[ loggedObject]);

    return {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin};
}
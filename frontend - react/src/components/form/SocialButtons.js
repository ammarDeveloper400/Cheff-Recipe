import React, { useEffect } from "react";
import AppleIcon from "../../assets/svg/AppleIcon";
import FBIcon from "../../assets/svg/FBIcon";
import GoogleIcon from "../../assets/svg/GoogleIcon";
import useAuth from "../../hooks/useAuth";
import { api } from "../../utils/apiCalls";
import { urls } from "../../utils/Api_urls";

function SocialButtons(props) {

    const isApple = () => {
        return (
            getOS() === "apple"
        )
    }

    const {setLoggedObject} = useAuth()

    useEffect(() => {


        let url = window.location.href;

        // check if url has get params ?id_token=...
        if(url.indexOf("?id_token=") > -1){
            // get the token
            let token = url.split("?id_token=")[1];
            connectSocial(token);
        }
    },[])


    const connectSocial = async (token) => {

        const {data:jwtData} = await api(`auth/google/callback?access_token=${token}`, null, 'GET', null);
        setLoggedObject(jwtData)
        window.location.href = '/';

    }

    function getOS() {
        let userAgent = window.navigator.userAgent.toLowerCase(),
            macosPlatforms = /(macintosh|macintel|macppc|mac68k|macos)/i,
            windowsPlatforms = /(win32|win64|windows|wince)/i,
            iosPlatforms = /(iphone|ipad|ipod)/i,
            os = null;
        if (macosPlatforms.test(userAgent)) {
            os = "apple";
        } else if (iosPlatforms.test(userAgent)) {
            os = "apple";
        } else if (windowsPlatforms.test(userAgent)) {
            os = "windows";
        } else if (/android/.test(userAgent)) {
            os = "android";
        } else if (!os && /linux/.test(userAgent)) {
            os = "linux";
        }
        return os;
    }

    const icons = [
        // {
        //     name:"facebook",
        //     icon:(<FBIcon />),
        //     show:true
        // },
        {
            name:"apple",
            icon:(<AppleIcon />),
            show:isApple(),
            link:"https://www.apple.com/ios/app-store/"
        },
        {
            name:"google",
            icon:(<GoogleIcon />),
            show:true,
            link:urls.API+"connect/google"
        },
    ]
    return (

        <div className="self-center flex flex-row items-center justify-center">
            {
                icons.map((i,index) => {
                    if(i.show){
                        return (
                            <a href={`${i.link}`} className="mr-5" key={index}>
                                {i.icon}
                            </a>
                        )
                    }else return null
                })
            }
        </div>
    )
}
export default SocialButtons;
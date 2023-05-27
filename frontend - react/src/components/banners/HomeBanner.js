import React from "react";
import HeartIcon from "../../assets/svg/heart";
import "./HomeBanner.css";
import {Link} from 'react-router-dom';

function HomeBanner() {

    const mainText = [

        {
            title:"Your ",
            colorPrimay:false,
            bgSvg:false
        },
        {
            title:"journey ",
            colorPrimay:false,
            bgSvg:false
        },
        {
            title:"to ",
            colorPrimay:false,
            bgSvg:false
        },
        {
            title:"better ",
            colorPrimay:false,
            bgSvg:false
        },
        {
            title:"food ",
            colorPrimay:true,
            bgSvg:false
        },
        {
            title:"starts",
            colorPrimay:false,
            bgSvg:false
        },
        {
            title:"here",
            colorPrimay:false,
            bgSvg:true
        },
        
    ]
    const getClassName = (t) => {
        let classes = ["mr-5"]
        if(t.colorPrimay){
            classes.push("text-primary_color")
        }else{
            classes.push("text-dark_text dark:text-light_text")
        }
        if(t.bgSvg)
        {
            classes.push("banner-here")
        }

        return classes.join(' ')
    }
    return (
        <div className="
            flex
            items-center
            justify-center
        ">
            <div className="
                flex md:flex-row flex-col justify-between items-center self-center w-11/12
            ">
                <div className="flex flex-initial md:w-3/5 flex-col">
                    <div className="flex flex-col">
                        <div className="flex flex-row flex-wrap text-dark_text dark:text-light_text 
                        font-hb
                                    text-3xl
                                    md:text-5xl
                      pr-5">
                            {
                                mainText.map((t,i)=>{
                                    return (<span
                                    key={`i${i}`}
                                    className={getClassName(t)}>{t.title}</span>)
                                })
                            }
                        </div>
                        <div className="h-6"></div>
                        <div className="flex flex-col relative">
                            <div className="
                                flex
                                flex-row
                            ">
                                <span className="font-mont lg:text-xl text-base font-medium  text-dark_text dark:text-light_text">Think delicious food is underated? So do we.</span>
                                <span className="
                                    ml-5
                                    -mt-2
                                ">
                                    <HeartIcon />
                                </span>
                            </div>
                            <span className="font-mont lg:text-xl text-base font-medium  text-dark_text  dark:text-light_text">We will help you get the best experience possible.</span>
                            
                        </div>
                        <div className="h-8"></div>
                        <div>
                            <Link className="
                            bg-primary_color
                            text-light_text
                            lg:text-sm
                            text-xs
                            lg:px-9
                            px-6
                            lg:py-4
                            py-3
                            rounded-md
                            font-montsemibold
                            font-semibold
                            
                            " to="/login">Start Cooking</Link>
                        </div>
                        <div className="h-5 md:hidden"></div>
                    </div>
                </div>
                <div className="flex flex-initial md:w-2/5 flex-row justify-end items-center ">
                    <img className=" w-full" src={require('./../../assets/images/banner.png')} alt="logo" />
                </div>
            </div>
        </div>
    );
}

export default HomeBanner;
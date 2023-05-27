import React, { useState } from "react";
import MusicIcon from "../assets/svg/MusicIcon";
import ThreeDotsDark from "../assets/svg/ThreeDotsDark";
import ThreeDots from "../assets/svg/ThreeDots";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import Pager from "../components/gallery/Pager/Pager";
import UploadButton from "../components/buttons/UploadButton";
import { useNavigate } from "react-router-dom";

const galls = [

    {
        id: 1,
        title: "Document.mp3",
        date:"06-07-2022",
        pics:[
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
        ],
        openMenu:false
    },
    {
        id: 1,
        title: "Document.mp3",
        date:"06-07-2022",
        pics:[
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
        ],
        openMenu:false
    },
    {
        id: 1,
        title: "Document.mp3",
        date:"06-07-2022",
        pics:[
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
        ],
        openMenu:false
    },
    {
        id: 1,
        title: "Document.mp3",
        date:"06-07-2022",
        pics:[
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
        ],
        openMenu:false
    },
    {
        id: 1,
        title: "Document.mp3",
        date:"06-07-2022",
        pics:[
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
            require('./../assets/images/g1.png'),
        ],
        openMenu:false
    }
]

function ViewGallery() {

    const [openIndex, setOpenIndex] = useState(-1);

    const navigate = useNavigate();

    const _renderMenu = (index,item) => {

        if(openIndex===index){

            return (

                <div className=" absolute right-0 top-8 bg-dark_grey dark:bg-light_grey w-40 ">
                    <div className="flex flex-row py-1 px-2 text-light_text dark:text-dark_text text-sm cursor-pointer ">Edit</div>
                    <div className="flex flex-row py-1 px-2  text-sm bg-error_color text-light_text  cursor-pointer">Delete</div>
                </div>
            )
        }
    }

    const ThreeDotsContainer = ({index,item})=>{


        const getDots = (open)=>{

            if(open){

                return (
                    <>
                        <span className=" dark:block hidden"><ThreeDots /></span>
                        <span className="dark:hidden"><ThreeDotsDark /></span>
                    </>
                )
            }
            return (
                <>
                    <span className="dark:hidden"><ThreeDots /></span>
                    <span className="dark:block hidden"><ThreeDotsDark /></span>
                </>
            )
        }

        if(openIndex===index){

            return (
                <span className={" cursor-pointer bg-dark_grey dark:bg-light_grey" } onClick={()=>{
                    setOpenIndex(-1);
                }}>
                    {getDots(true)}
                </span>
            )
        }

        return (

            <>
                <span className={" cursor-pointer" } onClick={()=>{
                    setOpenIndex(index);
                }}>
                    {getDots(false)}
                </span>
            </>
        )
    }
    const GallBox = ({gall:item,index})=>{

        let lefft = 20;


        return (

            <div onClick={()=>navigate("/gallery-details")} className="relative flex flex-col sm:w-64 mb-7 cursor-pointer" key={`m-${index}`}>

                <div key={`sb-${index}`} className=" py-2 pl-3 flex flex-row justify-between items-center bg-light_grey dark:bg-dark_grey rounded-t-md ">
                    <div className="flex flex-row items-center w-3/5">
                        <span><MusicIcon /></span>
                        <span className="ml-2 text-dark_text dark:text-light_text sm:text-sm text-xs overflow-x-clip  text-ellipsis whitespace-nowrap">{item.title}</span>
                    </div>

                    <div className="flex flex-row items-center justify-end  w-2/5">
                        <span className=" text-xs text-dark_grey3 dark:text-light_grey text-ellipsis whitespace-nowrap sm:pl-0 pl-2 ">{item.date}</span>
                        <ThreeDotsContainer item={item} index={index} />
                    </div>
                </div>
                <div key={`sb1-${index}`} className=" h-20 py-3 px-3 flex flex-row justify-between items-center bg-light_grey3 dark:bg-bodybg rounded-b-md ">
                    <div className=" w-full relative">
                        {
                            item.pics.map((pic,index)=>{
                                return (
                                    <div key={`sb2-${index}`} className={"flex flex-row items-center justify-center absolute top-0 bottom-0 "  } style={{left: (index*lefft)}}>
                                        <img src={pic} className={" w-14 h-14 "} alt="" />
                                    </div>
                                )
                            })
                        }
                    </div>
                </div>

                {_renderMenu(index,item)}
            </div>
        )
    }

    return (
        <div className=" min-h-screen">
            <Header />
            <div className="md:h-20 h-10"></div>
            <div className="w-full flex flex-row justify-center ">
                <div className="w-11/12 flex self-center flex-row justify-between items-center">
                    <div className="w-3/6"></div>
                    <div className="w-3/6 max-w-min">
                        <UploadButton />
                    </div>                        
                </div>
            </div>
            <div className="md:h-10 h-5"></div>
            <div className="flex flex-col w-full pb-10">
                <div className="w-11/12 flex flex-row self-center  flex-wrap justify-between items-center">
                    {
                        galls.map((item, index) => {

                            return (
                                <GallBox key={`--${index}`} gall={item} index={index} />
                            )
                        })
                    }
                </div>
            </div>
            <div className="md:h-10 h-5"></div>
            <div className="w-full flex flex-row justify-center ">
                <div className="w-11/12 flex self-center flex-row justify-between items-center">
                    <div className="w-3/6"></div>
                    <div className="w-3/6 ">
                        <Pager totalPages={5} updatePage={(p)=>{console.log('page now: ' + p)}} />
                    </div>
                </div>
            </div>
            <div className="h-20"></div>
            <Footer />
        </div>
    );
}

export default ViewGallery;
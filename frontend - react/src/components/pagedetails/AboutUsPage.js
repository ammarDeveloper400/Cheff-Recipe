import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import { api } from "../../utils/apiCalls";
import ReactMarkdown from "react-markdown";
import "react-responsive-carousel/lib/styles/carousel.min.css"; // requires a loader
import { Carousel } from 'react-responsive-carousel';

function AboutUsPage(props) {
    function createMarkup() {
        return {__html: `${props?.page?.attributes?.description}`};
    }
    
    return (
        <div className="
            flex
            flex-column
            justify-center
            items-center
            max-w-[1300px]


            
        ">
            <div className="flex flex-col self-center w-full">
                <div
                
                className="
                    flex flex-col
                    w-full
                    justify-center
                    mb-5
                    p-5

                ">
                    <div className="
                        relative
                        w-full
                        h-96">
                        <img src={props?.page?.attributes?.banner?.data?.attributes?.url} alt="" className="
                            w-full
                            h-96
                            object-cover
                        "/>
                        <span className="absolute top-0 left-0 right-0 bottom-0 w-full h-96 flex flex-row items-center justify-center font-hr text-4xl">{props?.page.attributes.title}</span>
                    </div>
                    <span className="
                        font-mont
                        font-bold
                        text-2xl
                        mt-2
                    ">{props?.page.attributes.title}</span>

                    <div dangerouslySetInnerHTML={createMarkup()} className='ck-editor'></div>

                    <div className="flex flex-col flex-wrap mt-5">


                        {
                            props?.page?.attributes?.aboutsections?.map((v,i)=>{
                                return (

                                    <div key={'dsdsd' + i} className="w-full flex flex-col flex-wrap">

                                        <span className="font-hr text-4xl text-center w-full">{v?.type}</span>

                                        <div className="
                                            flex 
                                            md:flex-row
                                            flex-col


                                        ">

                                            <div className="mr-5  md:mt-0 mt-2">
                                                <img src={v?.image?.data?.attributes?.url} alt="" className="
                                                    md:w-56 w-full
                                                    object-cover
                                                    rounded-xl
                                                    border-4
                                                    border-primary_color
                                                "/>
                                            </div>

                                            <div className="flex flex-col items-start md:mt-0 mt-2">
                                                <span className="font-mont font-bold text-xl">{v?.title}</span>
                                                <div dangerouslySetInnerHTML={{ __html : v?.description }} className='ck-editor mt-2'></div>
                                            </div>
                                        </div>

                                    </div>
                                )
                            })
                        }
                    </div>

                    <div className="
                    flex
                    flex-row
                    flex-wrap
                    mt-5
                    justify-between
                    items-center
                    ">
                        {props?.page?.attributes?.circleblock?.map((v,i)=>{

                            return (
                                <div
                                key={'desd' + i}
                                className="
                                flex
                                flex-col
                                md:w-1/3
                                w-full
                                p-10
                                items-center
                                justify-center
                                ">
                                    <img src={v?.image?.data?.attributes?.url} alt="" className="
                                        w-full
                                        rounded-full
                                        border-4
                                        border-primary_color
                                        mb-2"
                                    />
                                    <span className="
                                    mt-2
                                    font-mont
                                    text-2xl
                                    font-bold
                                    text-center
                                    ">{v?.title}</span>
                                    <span className="
                                    mt-2
                                    font-mont
                                    text-lg
                                    font-bold
                                    text-center
                                    ">{v?.description}</span>
                                </div>
                            )
                        })}
                    </div>

                    <div className="mt-5">
                        <span className="font-mont text-2xl mb-">Photo Gallery</span>
                        <div className="h-2"></div>

                        {
                            props?.page?.attributes?.gallery?.data?.length>0 && <Carousel
                            showThumbs={false}
                            showStatus={false}
                            showIndicators={false}
                            infiniteLoop={true}
                            autoPlay={true}
                            interval={3000}
                            >
                                {props?.page?.attributes?.gallery?.data?.map((v,i)=>{
                                    return (
                                        <div key={'dsd' + i} className="w-full h-96">
                                            <img src={v?.attributes?.url} alt="" className="w-full h-96 object-cover"/>
                                        </div>
                                    )
                                }
                                )}
                            </Carousel>

                        }
                    </div>

                    
                    
                </div>
            </div>
            
        </div>
    );
}

export default AboutUsPage;
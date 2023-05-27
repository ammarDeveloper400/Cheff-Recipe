import React, { useEffect, useState } from "react";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import Pager from "../components/gallery/Pager/Pager";
import CreatingPicsRightBox from "../components/gallery/picboxes/CreatingPicsBox";
import CreatedPicsBox from "../components/gallery/picboxes/CreatedPicsBox";
import DetailPagePlayer from "../components/gallery/player/DetailPagePlayer";



function GalleryDetails(props) {


    const [loading,setLoading] = useState(true);


    useEffect(()=>{
        setTimeout(()=>{
            setLoading(false);
        },4000)
    },[])


    


    const RightGallery = ()=>{
        return (
            <div className="lg:w-/6 w-full flex flex-row justify-center">
                <div className="max-w-3xl">
                    <div className="flex flex-col">
                        <div className="flex flex-row justify-between items-center">
                            <div className="lg:mt-0 mt-5 ">
                                <DetailPagePlayer loading={loading} />
                            </div>
                            <div className="w-3/6 flex flex-row justify-end items-center">
                                {!loading &&
                                    <Pager totalPages={5} updatePage={(p)=>{console.log('page now: ' + p)}} />
                                }
                            </div>
                        </div>

                        <div className="h-5"></div>
                        {
                            loading ?<>
                                <CreatingPicsRightBox />
                            </>:<>
                                <CreatedPicsBox createMenu={false} />
                            </>
                        }
                    </div>
                </div>
            </div>
        )
    }




    return (
        <div className=" min-h-screen">
            <Header />
            <div className="md:h-20 h-10"></div>
            <div className="w-full flex flex-row justify-center ">
                <div className="w-11/12 flex self-center flex-row justify-between items-center">
                    <RightGallery />
                </div>
            </div>
            
            
            <div className="h-20"></div>
            <Footer />
        </div>
    );
}

export default GalleryDetails;
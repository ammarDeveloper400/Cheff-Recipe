import React from "react";
import CreateGalleryMenu from "./CreateGalleryMenu";

function CreatedPicsBox({createMenu=false}) {
    return (

        <div className="w-full bg-light_grey dark:bg-dark_grey flex flex-col  py-6 pl-9 pb-6">

            {createMenu && <CreateGalleryMenu />}
            <div className="h-5"></div>
            <div className={" flex flex-row flex-wrap " }>
                {
                    [1,2,3,4,5,6,7,8,9,10,11,12].map((i)=>{
                        return ( 
                            <div className="flex flex-col w-32 h-32 grad-loading  mb-5 rounded-md mr-5">
                                <img alt={`num-${i}.png`} className="w-32 h-32" src={require('./../../../assets/images/g1.png')} />
                            </div>
                        )
                    })
                }
            </div>
        </div>
    )
}
export default CreatedPicsBox;
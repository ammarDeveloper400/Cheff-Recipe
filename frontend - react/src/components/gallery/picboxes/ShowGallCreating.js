import React from "react";
import GetProgressCircle from "./GetProgressCircle";

const ShowGallCreating = ({progress})=>{

    return (
        <div className={" lg:text-sm text-xs font-montsemibold font-semibold bg-light_grey dark:bg-dark_grey flex flex-row justify-between h-10 px-4 "}>
            <div  className="flex flex-row justify-between items-center ">
                <span className=" font-mont text-sm text-dark_text dark:text-light_text">Creating Gallery</span>
                {progress>0 && <span className="ml-10"><GetProgressCircle p={progress} /></span>}
            </div>
        </div>
    )
}

export default ShowGallCreating;
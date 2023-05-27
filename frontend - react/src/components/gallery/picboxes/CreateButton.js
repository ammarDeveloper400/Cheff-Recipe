import React from "react";

function CreateButton({text,onClick,active=false}){


    const getCreatePicsClasses = ()=>{

        if(!active)
            return " text-light_grey bg-light_grey2 dark:text-grey_text dark:bg-dark_grey3 "
        return " bg-bodybg text-dark_text drop-shadow-lg"
        
    }

    return (
        <div onClick={()=>{
            if(active)
                onClick();
        }} className={" lg:text-sm text-xs lg:px-9 px-6 h-10 rounded-md font-montsemibold font-semibold cursor-pointer flex flex-row justify-center items-center " + getCreatePicsClasses() }>
                {text}
        </div>
    )
}

export default CreateButton;
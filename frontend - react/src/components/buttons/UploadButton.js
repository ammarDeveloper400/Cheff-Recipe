import React from "react";
import UploadIcon from "../../assets/svg/UploadIcon";

function UploadButton({onClick}) {
    return (

        <div 
        onClick={onClick}
        className="
                        
        bg-primary_color
        text-dark_text
        lg:text-sm
        text-xs
        lg:px-4
        px-4
        lg:py-4
        py-3
        rounded-md
        font-montsemibold
        font-semibold

        flex flex-row
        items-center

        cursor-pointer
        
        "><span className="mr-5 whitespace-nowrap">Upload audio</span><UploadIcon /></div>
    )
}
export default UploadButton;
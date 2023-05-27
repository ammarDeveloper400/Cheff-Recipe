import React from "react";
import DownloadIcon from "../../../assets/svg/DownloadIcon";
import DownloadIconDark from "../../../assets/svg/DownloadIconDark";


function DownloadButton({text,onClick}){

    return (

        <div onClick={onClick} className=" bg-light_grey dark:bg-dark_grey flex flex-row justify-between h-10">
            <div className=" flex flex-row items-center">
                <span className="ml-2.5 font-montsemibold text-sm text-dark_text dark:text-light_text ">{text}</span>
                <span className="ml-5">
                    <span className="dark:hidden"><DownloadIcon /></span>
                    <span className="dark:block hidden"><DownloadIconDark /></span>
                </span>
            </div>
        </div>
    )
}

export default DownloadButton;
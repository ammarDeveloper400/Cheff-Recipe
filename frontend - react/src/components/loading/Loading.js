import React from "react";

function Loading(props) {
    return (

        <div className=" bg-light_grey dark:bg-dark_grey  md:flex flex-row justify-center items-center hidden fixed bottom-0 left-0 right-0 top-0 min-h-screen z-30">
            <span className=" text-grey_text dark:text-light_text lg:text-sm text-xs flex flex-row items-center justify-center">
                Please Wait... 
                <img src={require('./../../assets/images/loading.gif')} className="h-5 w-5 ml-3" />
            </span>
        </div>
    )
}
export default Loading;
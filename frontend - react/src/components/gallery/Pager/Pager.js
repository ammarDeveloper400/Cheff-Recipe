import React from "react";
import LeftArrow from "../../../assets/svg/LeftArrow";
import LeftArrowDark from "../../../assets/svg/LeftArrowDark";
import RightArrow from "../../../assets/svg/RightArrow";
import RightArrowDark from "../../../assets/svg/RightArrowDark";

function Pager({updatePage, totalPages}) {


    const [currentPage, setCurrentPage] = React.useState(1);

    const handleLeftArrow = () => {
        if(currentPage > 1){
            setCurrentPage(currentPage - 1);
            updatePage(currentPage - 1);
        }
    }

    const handleRightArrow = () => {
        if(currentPage < totalPages){
            setCurrentPage(currentPage + 1);
            updatePage(currentPage + 1);
        }
    }

    return (

        <div className="flex flex-row justify-end items-center">
            <div className="font-mont text-sm text-dark_grey dark:text-light_text mr-3">Page {currentPage}</div>
            <div className=" bg-light_grey dark:bg-dark_grey flex flex-row">
                <div onClick={()=>handleLeftArrow()} className="flex flex-row justify-start items-center  py-5 px-5 cursor-pointer ">
                    <span className="dark:hidden"><LeftArrow /></span>
                    <span className="dark:block hidden"><LeftArrowDark /></span>
                </div>
                <div onClick={()=>handleRightArrow()} className="flex flex-row justify-start items-center py-5 px-5 cursor-pointer ">
                    <span className="dark:hidden"><RightArrow /></span>
                    <span className="dark:block hidden"><RightArrowDark /></span>
                </div>
            </div>
        </div>
    )
}
export default Pager;
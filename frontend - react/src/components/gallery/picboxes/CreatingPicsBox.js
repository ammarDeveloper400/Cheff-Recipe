import React from "react";

function CreatingPicsRightBox(){

    return (
        <div className={"w-full bg-light_grey dark:bg-dark_grey flex flex-row flex-wrap py-14 pl-9 pb-6 " }>
            {
                [1,2,3,4,5,6,7,8,9,10,11,12].map((i)=>{
                    return ( 
                        <div className="flex flex-col w-32 h-32 grad-loading  mb-5 rounded-md mr-5">
                        </div>
                    )
                })
            }
        </div>
    )
}

export default CreatingPicsRightBox;
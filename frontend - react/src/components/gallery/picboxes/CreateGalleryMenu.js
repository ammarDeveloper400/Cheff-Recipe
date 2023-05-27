import React,  { useState } from "react";
import CreateButton from "./CreateButton";
import DownloadButton from "./DownloadButton";
import ShowGallCreating from "./ShowGallCreating";
import { useNavigate } from "react-router-dom";

const CreateGalleryMenu = () => {

    const [gallCreated, setGallCreated] = useState(true)
    const [progressCreateGall, setProgressCreateGall] = useState(0)
    const navigate = useNavigate();

    const startCreatingGall = ()=>{
        setProgressCreateGall(0)

        let interval = setInterval(()=>{
            setProgressCreateGall((prevState)=> {
                if(prevState>=100){
                    clearInterval(interval);
                    setGallCreated(true);
                    return 100;
                }
                return prevState+1;
            })
        },10);
    }



    return (


        <>
            <div className=" w-full flex flex-row items-center">
                <DownloadButton text={"Download"} />
                {
                    !gallCreated ?
                
                    <div className="ml-2.5">
                        {progressCreateGall>0 && progressCreateGall<100 ?
                            <ShowGallCreating progress={progressCreateGall} />
                        :
                            <CreateButton text={"Create gallery"} active={true} onClick={()=>{
                                startCreatingGall()
                            }} />
                        }
                        
                    </div>
                :
                    <div className="ml-5">
                        <CreateButton text={"View gallery"} active={true} onClick={()=>{
                            navigate('/view-gallery', {replace:true})
                        }} />
                    </div>
                }
            </div>

            <div className="h-5"></div>
        </>
    )
}

export default CreateGalleryMenu;
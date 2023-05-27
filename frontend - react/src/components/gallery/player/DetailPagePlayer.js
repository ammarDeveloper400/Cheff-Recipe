import React, { useState, useCallback, useEffect } from "react";
import MusicIcon from "../../../assets/svg/MusicIcon";
import PauseIcon from "../../../assets/svg/PauseIcon";
import PauseIconDark from "../../../assets/svg/PauseIconDark";
import PlayIcon from "../../../assets/svg/PlayIcon";
import PlayIconDark from "../../../assets/svg/PlayIconDark";
import useDarkMode from "../../../hooks/useDarkMode";

import ReactAudioPlayer from 'react-audio-player';
let interval;


function DetailPagePlayer({loading}) {

    const [colorTheme] = useDarkMode()


    const [playing,setPlaying] = useState(false);

    const [parentVal, setParentVal] = useState(0);

    const [mouseState, setMouseState] = useState(null);


    

    useEffect(() => {
        if (mouseState === "up") {
            setParentVal(parentVal);
        }
    }, [mouseState]);

    
    const playPause = useCallback(()=>{

        
        clearInterval(interval);

        setPlaying(!playing);

        // increase the value of the slider with interval
        if(playing){
            interval = setInterval(()=>{
                setParentVal((prev)=>prev + 1);
                console.log('here')
            }
            ,1000)
            return ()=>clearInterval(interval);
        }else{
            clearInterval(interval);
        }
    }
    ,[playing])


    

    const PlayIconDiv = ()=>{


        return (


            colorTheme !== "dark" ?

            <>
                {
                    playing ? <PauseIconDark /> : <PlayIconDark />
                }
            </>
            :

            // 

            <>
                {
                    playing ? <PauseIcon /> : <PlayIcon />
                }
            </>

        )
    }

    const Player = ()=>{


        return (

            <div className="">
                <div className="range-slider">
                    <input
                        type="range"
                        value={parentVal}
                        id="myRange"
                        // onMouseDown={() => setMouseState("down")}
                        // onMouseUp={() => setMouseState("up")}
                    />
                </div>
                {/* <ReactAudioPlayer
                    src={require('./../../../assets/audio/sample.mp3')}
                    autoPlay
                    controls
                    /> */}
            </div>
        )
    }




    return (
        <div className="bg-light_grey dark:bg-dark_grey px-2 py-2 flex flex-col ">
            <div className="flex flex-row justify-between items-center">
                <div className=" flex flex-row items-center justify-start">
                    <MusicIcon />
                    <span className="ml-2.5 font-mont text-sm text-dark_text dark:text-light_text ">Document.mp3</span>
                </div>
                <div className="flex flex-row justify-end ml-10 cursor-pointer " onClick={()=>playPause()}>
                    <PlayIconDiv />
                </div>
            </div>
            <div className="h-2"></div>
            <Player />
        </div>
    );
}

export default DetailPagePlayer;
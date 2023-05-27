import React, { useCallback, useEffect, useState } from "react";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import { useDropzone } from 'react-dropzone'
import CopyIcon from "../assets/svg/CopyIcon";
import DropIcon from "../assets/svg/DropIcon";
import DropIconDark from "../assets/svg/DropIconDark";
import CopyIconDark from "../assets/svg/CopyIconDark";
import MusicIcon from "../assets/svg/MusicIcon";
import { CircularProgressbar, buildStyles } from 'react-circular-progressbar';
import 'react-circular-progressbar/dist/styles.css';
import colors from "../utils/colors";
import DoneIcon from "../assets/svg/DoneIcon";
import UpIconDark from "../assets/svg/UpIconDark";
import UpIcon from "../assets/svg/UpIcon";

import LangSelector from "../components/gallery/langselector/LangSelector";
import Pager from "../components/gallery/Pager/Pager";
import UploadButton from "../components/buttons/UploadButton";
import CreatedPicsBox from "../components/gallery/picboxes/CreatedPicsBox";
import CreatingPicsRightBox from "../components/gallery/picboxes/CreatingPicsBox";
import useAuth from "../hooks/useAuth";
import { useNavigate } from "react-router-dom";
import axios from 'axios';
import {urls} from './../utils/Api_urls.js';
import swal from 'sweetalert';
import { api } from "../utils/apiCalls";

const lipsum = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."



function Gallery(props) {


    // const [colorTheme] = useDarkMode();

    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    const [loading, setLoading] = useState(true);
    const navigate = useNavigate();

    const [fileDropped, dropFile] = useState(false)
    const [picsCreated, setPicsCreated] = useState(false)
    const [expanded, expand] = useState(false);
    const [progress, setProgress] = useState(0)
    const [progressCreate, setProgressCreate] = useState(0)
    const [lyrics, setlyrics] = useState("");
    const [fileName, setFileName] = useState("");
    const [songId, setSongId] = useState(0);

    const [copied, setCopied] = useState(false)
    const [lyricsloading, setLyricsLoading] = useState(false)
    const [lyricsstarted, setLyricsstarted] = useState(false)
    const [lyricsErrored, setLyricsErrored] = useState(false)


    const getFileName = () => {
        if(fileName=='') return '--';

        let name = fileName;
        if(name.length>10){
            // substr name after 3 chars and keep extension
            name = name.substr(0, 7) + '...' + name.substr(name.length-4, name.length);
        }
        return name;
    }

    const handleLogin = async () => {
        setLoading(true);
        const logged = await checkLogin();
        if(logged){
            setLoading(false);
        }else{
            navigate('/login', {replace: true});
        }
    }
    
    useEffect(()=>{
        if(isLoggedIn){
            handleLogin();
        }
    },[isLoggedIn])

    const getCreatePicsClasses = ()=>{

        if(progress<100 || !fileDropped)
            return " text-light_grey bg-light_grey2 dark:text-grey_text dark:bg-dark_grey3 "
        return " bg-bodybg text-dark_text drop-shadow-lg"
        
    }

    const maxHeight = () =>{

        if(!expanded) return ( " max-h-48 overflow-hidden" ) 

        return ""
    }

    const onDrop = useCallback((acceptedFiles) => {
        startUploading(acceptedFiles[0]);
        console.log(acceptedFiles);
        // acceptedFiles.forEach((file) => {
        //     const reader = new FileReader()

        //     reader.onabort = () => console.log('file reading was aborted')
        //     reader.onerror = () => console.log('file reading has failed')
        //     reader.onload = () => {
        //         // Do whatever you want with the file contents
        //         const binaryStr = reader.result
        //         console.log(binaryStr)
        //     }
        //     reader.readAsArrayBuffer(file)
        // })

    }, [])
    const { getRootProps, getInputProps } = useDropzone({ onDrop, }) //  accept: {'audio/mp3': ['.mp3']}

    const dummyLines = [
        {w:70},
        {w:80},
        {w:100},
        {w:90},
        {w:85},
        {w:75},
    ]

    const DummyLinesGen = () =>{

        return dummyLines.map((d,i)=>{
            let width = d.w + '%';
            return <div key={i} className={"h-2 bg-light_grey3 dark:bg-dark_grey6 mb-2"} style={{width}}></div>
        });
    }

    

    const GetProgressCircle = ({p}) =>{

        if(p===0) return <></>

        return <div className={"h-4 w-4"}>
            <CircularProgressbar strokeWidth={20} styles={buildStyles({
                strokeLinecap: 'butt',
                pathColor:colors.primary_color,
            })} value={p} text={``} />
        </div>
    }

    const getLyrics = async (id) =>{
        setSongId(id);
        setLyricsLoading(true);
        setLyricsErrored(false);
        setLyricsstarted(true);

        const payload = {
            song:id
        }
        const token = getLoggedObject()?.token;
        await api(`fetch-lyrics/`, payload, 'POST', token);
        const {isError, data} = await api(`get-lyrics/${id}`, null, 'GET', token);
        console.log('get-lyrics/:', data);
        console.log(isError);
        let k = Object.keys(data)[0];
        if(isError) {
            setLyricsLoading(false);
            setlyrics('Lyrics loading failed');
            setLyricsErrored(true);
        }else{
            setLyricsLoading(false);
            setlyrics(data.lyrics)
        }
    }

    const translateTo = async (lang) =>{
        const id = songId;
        setLyricsLoading(true);
        setLyricsErrored(false);

        const payload = {
            song:id,
            lyrics:id,
            language:lang
        }
        const token = getLoggedObject()?.token;
        const {isError, data} = await api(`translate/`, payload, 'POST', token);
        console.log('translate/', data);
        console.log(isError);
        let k = Object.keys(data)[0];
        if(isError) {
            setLyricsLoading(false);
            setlyrics('Lyrics translation failed');
            setLyricsErrored(true);
        }else{
            setLyricsLoading(false);
            setlyrics(data.translation)
        }
    }
    

    const startUploading = (file)=>{
        


        setFileName(file.name);


        const h = {
            'Authorization':`Token ${getLoggedObject().token}`,
            'Content-Type': 'multipart/form-data',
            'Accept': 'application/json'
        }; //headers
        let data = new FormData();
        data.append('song', file);
        try{
            dropFile(true);
            axios.request({
                method: "POST", 
                headers: h,
                url: urls.API +'upload/', 
                data: data, 
                onUploadProgress: (p) => {
                    let percentCompleted = Math.round(
                        (p.loaded * 100) / p.total
                    );
                    if(percentCompleted<100)
                        setProgress(percentCompleted);
                }
            }).then (data => {
                console.log(data);
                if(data.status==201){
                    setProgress(100);
                    getLyrics(data.data.id);
                }
            })
            .catch(error => {
                dropFile(false);
                swal("Error", "Upload failed", "error");
                console.log(error);
            });
        }catch(e){
            dropFile(false);
            swal("Error", "Upload failed", "error")
            console.log('eee')
            console.log(e);
        }



        // dropFile(true);
        // setProgress(0)

        // let interval = setInterval(()=>{
        //     setProgress((prevState)=> {
        //         if(prevState>=100){
        //             clearInterval(interval);
        //             return 100;
        //         }
        //         return prevState+1;
        //     })
        // },10);
    }

    

    const createPicsButton = ()=>{

        return (
            <div onClick={()=>{
                if(progress===100 && fileDropped)
                    startCreating();
            }} className={" lg:text-sm text-xs lg:px-9 px-6 h-10 rounded-md font-montsemibold font-semibold cursor-pointer flex flex-row justify-center items-center " + getCreatePicsClasses() }>
                    Create pics
            </div>
        )
    }

    const showPicsCreating = ()=>{

        return (
            <div className={" lg:text-sm text-xs font-montsemibold font-semibold bg-light_grey dark:bg-dark_grey flex flex-row justify-between h-10 px-4 " + getCreatePicsClasses()}>
                <div  className="flex flex-row justify-between items-center ">
                    <span className=" font-mont text-sm text-dark_text dark:text-light_text">Creating pics</span>
                    {progressCreate>0 && <span className="ml-10"><GetProgressCircle p={progressCreate} /></span>}
                </div>
            </div>
        )
    }


    const createdPicsDone = ()=>{

        return (
            <div className={" lg:text-sm text-xs font-montsemibold font-semibold bg-light_grey dark:bg-dark_grey flex flex-row justify-between h-10 px-4 "}>
                <div onClick={()=>{
                    
                }} className="flex flex-row justify-between items-center ">
                    <span className=" font-mont text-sm text-dark_text dark:text-light_text">Photos generated</span>
                    <div className="flex flex-row justify-end items-center ml-5">
                        <DoneIcon />
                    </div>
                </div>
            </div>
        )
    }

    const startCreating = ()=>{
        setProgressCreate(0)

        let interval = setInterval(()=>{
            setProgressCreate((prevState)=> {
                if(prevState>=100){
                    clearInterval(interval);
                    setPicsCreated(true);
                    return 100;
                }
                return prevState+1;
            })
        },10);
    }

    

    const UploaderProgress = () => {


        return (


            <>
                <div className=" w-full flex flex-row items-center">
                    <div className=" w-2/5 bg-light_grey dark:bg-dark_grey flex flex-row justify-between h-10 px-4">
                        <div className=" flex flex-row items-center">
                            <MusicIcon />
                            <span className="ml-2.5 font-mont text-sm text-dark_text dark:text-light_text ">{getFileName()}</span>
                        </div>
                        {
                            progress < 100 ?
                        
                        <div className="flex flex-row justify-end items-center">
                            <GetProgressCircle p={progress} />
                        </div>
                        :
                        <div className="flex flex-row justify-end items-center">
                            <DoneIcon />
                        </div>
                        }
                    </div>
                    {
                        !picsCreated ?
                    
                        <div className="ml-2.5">
                            {progressCreate>0 && progressCreate<100 ?
                                showPicsCreating()
                            :
                                createPicsButton()
                            }
                            
                        </div>
                    :
                        <div className="ml-2.5">
                            {createdPicsDone()}
                        </div>
                    }
                </div>

                <div className="h-5"></div>
            </>
        )
    }

    

    const GetDummyLinesBox = ()=>{

        return (
            <div className={"w-full bg-light_grey dark:bg-dark_grey flex flex-col justify-between py-4 px-4 " + maxHeight() }>
                <div className="flex flex-row justify-between">
                    <div className="flex flex-col w-11/12">
                        <DummyLinesGen />
                    </div>
                    <div className="flex flex-row justify-end w-1/12 cursor-pointer">
                        <span className="dark:hidden"><CopyIcon /></span>
                        <span className="hidden dark:block"><CopyIconDark /></span>
                    </div>
                </div>
                <div className="h-5"></div>

                <div className="flex flex-row justify-between items-center">
                    <div className="w-3/6"></div>
                    <div className="w-3/6 flex flex-row justify-end items-center">
                        <div className={"h-2 bg-light_grey3 dark:bg-dark_grey6 w-3/12"} ></div>
                        <span className=" ml-3 dark:hidden"><DropIcon /></span>
                        <span className=" ml-3 hidden dark:block"><DropIconDark /></span>
                    </div>
                </div>
            </div>
        )
    }

    const ShowMoreShowLess = ()=>{


        if(!expanded){

            return (

                <div onClick={()=>{expand(true)}} className="flex flex-row items-center cursor-pointer ">
                    <div className={"text-primary_color2 font-mont text-xs"} >Show More</div>
                    <span className=" ml-3 dark:hidden"><DropIcon /></span>
                    <span className=" ml-3 hidden dark:block"><DropIconDark /></span>
                </div>
            )
        }
        else{

            return (
                <div onClick={()=>{expand(false)}} className="flex flex-row justify-end items-center  cursor-pointer">
                    <div className={" text-primary_color2 font-mont text-xs"} >Show less</div>
                    <span className=" ml-3 dark:hidden"><UpIcon /></span>
                    <span className=" ml-3 hidden dark:block"><UpIconDark /></span>
                </div>
            )
        }
    }

    const copyText = (t)=>{

        navigator.clipboard.writeText(t);
        setCopied(true)
    }

    const CopyTextButton = ()=>{

        if(copied){
            setTimeout(()=>{
                setCopied(false)
            },1500)

            return (
                <span className=""><DoneIcon /></span>
            )
        }
        return (
            <div className="cursor-pointer"
                    onClick={()=>{copyText(lyrics)}}
                >
                <span className="dark:hidden"><CopyIcon /></span>
                <span className="hidden dark:block"><CopyIconDark /></span>
            </div>
        )
    }

    

    
    const GetLiveLinesBox = ()=>{
        return (
            <div className={"relative w-full bg-light_grey dark:bg-dark_grey flex flex-col justify-between py-4 px-4  mb-24" + maxHeight() }>
                <div className="flex flex-row justify-between">
                    <div className="flex flex-col w-4/5 font-mont text-xs leading-6  text-dark_text dark:text-light_text">
                        {lyrics}
                    </div>
                    <div className="flex flex-row justify-end w-1/5 items-center h-min">
                        <LangSelector onLangChange={(s)=>{translateTo(s)}} />
                        <CopyTextButton />
                    </div>
                </div>
                <div className="h-5"></div>

                <div className="flex flex-row justify-between items-center absolute right-4 bottom-4">
                    <ShowMoreShowLess />
                </div>
                
            </div>
        )

    }
    


    const RightGallery = ()=>{
        return (
            <div className="lg:w-/6 w-full flex flex-row justify-end">
                <div className="max-w-3xl">
                    <div className="flex flex-col">
                        <div className="flex flex-row justify-between items-center">
                            <div className="lg:mt-0 mt-5 w-3/6">
                                <div className="font-montbold font-extrabold text-xl text-dark_text dark:text-light_text ">Audio art</div>
                                <div className="font-mont lg:mt-2 mt-1 text-base text-dark_grey3 dark:text-light_text">Watch your music come alive!</div>
                            </div>
                            <div className="w-3/6 flex flex-row justify-end items-center">
                                {picsCreated &&
                                    <Pager totalPages={5} updatePage={(p)=>{console.log('page now: ' + p)}} />
                                }
                            </div>
                        </div>

                        <div className="h-5"></div>
                        {
                            !picsCreated  ? <>
                                {progressCreate>0 && <CreatingPicsRightBox />}
                            </>:<>
                                <CreatedPicsBox createMenu={true} />
                            </>
                        }
                    </div>
                </div>
            </div>
        )
    }



    return (
        <div className=" min-h-screen">
            <Header />
            <div className="md:h-20 h-10"></div>
            <div className="flex flex-col w-full pb-10">
                <div className="w-11/12 flex lg:flex-row flex-col justify-start self-center">
                    <div className="lg:w-3/6 w-full md:pr-5">
                        <div className=" md:max-w-xl w-full flex flex-col">
                            <div className="lg:mt-0 mt-5">
                                <div className="font-montbold font-extrabold text-xl text-dark_text dark:text-light_text ">Upload audio files</div>
                                <div className="font-mont lg:mt-2 mt-1 text-base text-dark_grey3 dark:text-light_text max-w-sm ">Max file size is 2mb. Supported file types are .m4A, .flac, .mp3 and .mp4.</div>
                            </div>
                            <div className="h-5"></div>
                            <div className="flex flex-row justify-start items-start">
                                <div  className=" border-2 border-dashed border-dark_grey5 w-full self-start flex flex-col items-center justify-center py-7 cursor-pointer " {...getRootProps()}>
                                    <input  {...getInputProps()} />
                                        <UploadButton />
                                        <div className="h-6"></div>
                                        <div className="font-mont lg:mt-2 mt-1 text-base text-dark_grey3 dark:text-light_text">or drag and drop files here </div>
                                </div>
                            </div>
                            <div className="h-5"></div>
                            {fileDropped && <UploaderProgress />}
                            {fileDropped && lyricsstarted &&
                            <>
                                {(lyricsloading) ?<GetDummyLinesBox />: <GetLiveLinesBox /> }
                            </>}
                        </div>
                    </div>
                    {progressCreate>0 ? <RightGallery /> : ''}
                </div>
            </div>
            <div className="h-20"></div>
            {/* // */}
            <Footer />
        </div>
    );
}

export default Gallery;
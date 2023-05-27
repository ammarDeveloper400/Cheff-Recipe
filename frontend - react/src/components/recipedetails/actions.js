import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import useAuth from "../../hooks/useAuth";
import { api } from "../../utils/apiCalls";
import { PDFDownloadLink, Page, Text, View, Document, StyleSheet , Link, Image} from '@react-pdf/renderer';
import colors from "../../utils/colors";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { FiDownload } from 'react-icons/fi';
import {AiFillHeart, AiOutlineHeart, AiOutlinePrinter, AiOutlineShareAlt} from 'react-icons/ai';
import { useForceUpdate } from "../../utils/functions";

let user;
let isLogged = false;
function Actions(props) {

    const [loading, setLoading] = useState(true);
    const [saveloading, setSaveLoading] = useState(true);
    const [saves, setSaves] = useState([]);
    const [downloads, setDownloads] = useState([]);
    const navigate = useNavigate();
    const forceupdate  = useForceUpdate()
    const [freemium, setFreemium] = useState({
        saves:3,
        searches:3,
        downloads:3
    });
    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    
    

    const handleLogin = async () => {
        setLoading(true);
        const logged = await checkLogin();
        if(logged){
            isLogged = true;
            user = getLoggedObject();
            getThreshold()
            
        }else{
            setLoading(false);
        }
    }

    const PrintElem = ()=>
    
    
    {

        countPrint()

        var elem = 'tobeprinted';
        var mywindow = window.open('', 'PRINT', 'height=400,width=600');
    
        mywindow.document.write('<html><head><title>' + document.title  + '</title>');
        mywindow.document.write('</head><body >');
        mywindow.document.write('<h1>' + document.title  + '</h1>');
        mywindow.document.write(document.getElementById(elem).innerHTML);
        mywindow.document.write('</body></html>');
    
        mywindow.document.close(); // necessary for IE >= 10
        mywindow.focus(); // necessary for IE >= 10*/
    
        mywindow.print();
        mywindow.close();
    
        return true;
    }
    
    useEffect(()=>{
        // getSections()
        
        if(isLoggedIn){
            handleLogin();
        }else{
            setLoading(false);
        }
    },[isLoggedIn])

    const getThreshold = async () => {

        const {isError, data} = await api(`freemium`, null, 'GET');
        console.log(isError);
        if(isError) {
            swal("Error", data.error.message, "error");
        }else{
            setFreemium(data.data.attributes);
            getSaves()
            getDownloads()
        }
    }



    const getSaves = async () => {

        const {isError, data} = await api(`saves`, null, 'GET', user?.jwt);
        console.log(isError);
        if(isError) {
            setSaveLoading(false);
            swal("Error", data.error.message, "error");
        }else{
            setSaves(data);
            setTimeout(() => {
                setSaveLoading(false);
                setLoading(false);
                forceupdate();
            },500);
        }
    }

    const getDownloads = async () => {

        const {isError, data} = await api(`downloads`, null, 'GET', user?.jwt);
        console.log(isError);
        if(isError) {
            swal("Error", data.error.message, "error");
        }else{
            setDownloads(data);
            setLoading(false);
        }
    }

    const isSaved = () => {

        const found = saves.find((item) => item.recipe?.id == props?.recipe?.id);
        if(found){
            return true;
        }
        return false;
    }

    const isDownloaded = () => {

        const found = downloads.find((item) => item.recipe?.id == props?.recipe?.id);
        if(found){
            return true;
        }
        return false;
    }

    const isDownloadAllowed = () => {


        if(downloads.length >= freemium.downloads){

            if(user && user.subscriptions && user.subscriptions?.length > 0){
                const found = user.subscriptions.find((item) => item.active);
                if(found){

                    if(found.downloads<=found.plan.downloads)
                    return true;
                }
            }

            return false;
        }
        return true;
    }

    const isSaveAllowed = () => {
        if(saves.length >= freemium.saves){

            if(user && user.subscriptions && user.subscriptions?.length > 0){
                const found = user.subscriptions.find((item) => item.active);
                if(found){

                    if(found.saves<=found.plan.saves)
                    return true;
                }
            }

            return false;
        }
        return true;
    }

    const downloadAlert = ()=>{
        swal({
            title: "Limit Reached",
            text: "You have reached your limit of downloads, Please subscribe to our amazing plans to continue downloading recipes",
            icon: "warning",
            dangerMode: true,
            buttons: 
            {
                cancel: "Cancel",
                login: "Show Me Plans",
            },
        })
        .then(willDelete => {
            if (willDelete) {
                navigate('/pricing');
            }
        });
    }

    const saveAlert = ()=>{

        swal({
            title: "Limit Reached",
            text: "You have reached your limit of saves, Please subscribe to our amazing plans to continue saving recipes",
            icon: "warning",
            dangerMode: true,
            buttons: 
            {
                cancel: "Cancel",
                login: "Show Me Plans",
            },
        })
        .then(willDelete => {
            if (willDelete) {
                navigate('/pricing');
            }
        });
    }

    const handleSave = async () => {
        if(!isLogged){
            handleLogin();
            return;
        }
        if(!isSaveAllowed()){
            saveAlert()
            return;
        }
        setSaveLoading(true);
        const {isError, data} = api(`subscriptions/consume`, {recipe:props?.recipe?.id,type:'save'}, 'PUT',  user?.jwt);
        console.log(isError);
        if(isError) {
            setSaveLoading(false);
            // swal("Error", data[k], "error");
            swal("Error", data.error.message, "error");
        }else{
            // window.location.reload();
            setTimeout(() => {
                getSaves()
            },1300);
        }
    }

    const countPrint = async () => {
        if(!isLogged){
            handleLogin();
            return;
        }
        api(`prints`, {recipe:props?.recipe?.id}, 'POST',  user?.jwt);
    }
    const handleUnsave = async () => {
        if(!isLogged){
            handleLogin();
            return;
        }
        
        setSaveLoading(true);

        // find save 1
        const found = saves.find((item) => item.recipe?.id == props?.recipe?.id);
        const {isError, data} = await api(`saves/${found.id}`,null, 'DELETE',  user?.jwt);
        console.log(isError);
        if(isError) {
            setSaveLoading(false);
            swal("Error", data.error.message, "error");
        }else{
            getSaves()
        }
    }

    const handleDownload = () => {
        handleDownloadPDF();
    }
    const handleDownloadPDF = () => {
        if(!isLogged){
            handleLogin();
            return;
        }
        if(!isDownloadAllowed()){
            downloadAlert()
            return;
        }

        api(`subscriptions/consume`, {recipe:props?.recipe?.id,type:'download'}, 'PUT',  user?.jwt).then(()=>{

            window.location.reload()

        });
    }


    const MyDoc = () => (
        <Document>
            <Page size="A4" style={{padding:20}} >


                <View style={{display:'flex', flexDirection:'row', justifyContent:'center', alignItems:'center'}}>
                    
                    <View style={{
                        width: 100,
                    }}>
                        <Image src={window.location.origin+'/icon-only.png'} style={{
                            width: 100,
                        }} />
                    </View>
                    <View style={{
                        marginTop: 10,
                        marginBottom:20,
                        textAlign: 'center',
                        display:'flex',
                        flexDirection:'column',
                        width:'70%'
                        

                    }}>
                        <Link style={{fontSize:40, fontWeight:"extrabold", color:colors.primary_color, fontFamily:"Times-Roman", textDecoration:'none'}} src="https://thechefsrecipes.com/">TheCheffRecipes.com</Link>
                        <Text style={{
                            fontSize:20,
                            fontFamily:"Times-Roman",
                            color:colors.primary_color,
                            fontWeight:"bold",
                            textAlign:'center'
                        }}>Thank you for visiting our website!</Text>
                        <Text style={{
                            fontSize:20,
                            fontFamily:"Times-Roman",
                            color:colors.primary_color,
                            fontWeight:"bold",
                            textAlign:'center'

                        }}>Below you will find your recipe ready to print!</Text>
                        <Text style={{
                            fontSize:16,
                            fontFamily:"Times-Roman",
                            color:colors.dark_text,
                            fontWeight:"bold",
                            textAlign:'center'

                        }}>We hope that you find the content helpful and informative and if there is anything else we can do to improve your visit, Please don't hesitate to let us know. Thank you again for choosing to spend some of your time with us.</Text>
                    </View>

                </View>

                <View  style={{ display:'flex',flexDirection:'row',justifyContent:'center',alignItems:'center', marginTop: 30}}>
                </View>
                <View  style={{ color: colors.primary_color, textAlign: 'center', marginTop: 30}} >
                    <Text >{props?.recipe?.attributes?.title}</Text>
                </View>
                <View  style={{marginTop:10}} >
                <Text style={{
                        fontSize:12
                    }}><Text style={{
                        fontWeight: 'bold',
                        color: colors.primary_color,
                        fontStyle: 'italic'
                    }}>Description: </Text>{props?.recipe?.attributes?.description}</Text>
                </View>
                <View>
                <Text style={{
                        fontSize:12
                    }}><Text style={{
                        fontWeight: 'bold',
                        color: colors.primary_color,
                        fontStyle: 'italic'
                    }}>Directions: </Text>{props?.recipe?.attributes?.directions}</Text>
                </View>
                <View  style={{marginTop:10}} >
                    <Text style={{
                        fontSize:12
                    }}><Text style={{
                        fontWeight: 'bold',
                        color: colors.primary_color,
                        fontStyle: 'italic'
                    }}>Ingredients: </Text>{props?.recipe?.attributes?.ingredients}</Text>
                </View>
                <View  style={{marginTop:10}} >
                <Text style={{
                        fontSize:12
                    }}><Text style={{
                        fontWeight: 'bold',
                        color: colors.primary_color,
                        fontStyle: 'italic'
                    }}>Nutrional Information: </Text>{props?.recipe?.attributes?.nutritional_information}</Text>
                </View>
                <View  style={{marginTop:10}} >
                <Text style={{
                        fontSize:12
                    }}><Text style={{
                        fontWeight: 'bold',
                        color: colors.primary_color,
                        fontStyle: 'italic'
                    }}>Cook Time: </Text>{props?.recipe?.attributes?.cook_time}</Text>
                </View>
                <View  style={{marginTop:10}} >
                <Text style={{
                        fontSize:12
                    }}><Text style={{
                        fontWeight: 'bold',
                        color: colors.primary_color,
                        fontStyle: 'italic'
                    }}>Serving: </Text>{props?.recipe?.attributes?.serving}</Text>
                </View>
                <View  style={{marginTop:10}} >
                <Text style={{
                        fontSize:12
                    }}><Text style={{
                        fontWeight: 'bold',
                        color: colors.primary_color,
                        fontStyle: 'italic'
                    }}>Note: </Text>{props?.recipe?.attributes?.note}</Text>
                </View>
                <View style={{
                    marginTop: 30,
                    textAlign: 'center'

                }}>
                    <Text style={{
                            fontSize:20,
                            fontFamily:"Times-Roman",
                            color:colors.primary_color,
                            fontWeight:"bold",
                            textAlign:'center'
                        }}>Thanks again for stopping by and happy cooking!</Text>
                </View>
            </Page>
        </Document>
    );


    
    if(!isLogged){

        return (

            <div className="
                flex
                flex-row
                items-center

                mt-4
                mb-4
            ">
                <span onClick={()=>{
                            swal({
                                title: "Login is required",
                                text: "Please sign in to download this recipe, when you signin, you get some free downloads too",
                                icon: "warning",
                                dangerMode: true,
                                buttons: 
                                {
                                    cancel: "Cancel",
                                    login: "Login",
                                },
                            })
                            .then(willDelete => {
                                if (willDelete) {
                                    navigate('/login');
                                }
                            });
                        }} className=" pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center">
                            <FiDownload color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Download
                        </span>
                        <span></span>
                <span
                onClick={()=>{

                    swal({
                        title: "Login is required",
                        text: "Please sign in to save this recipe, when you signin, you get some free saves too",
                        icon: "warning",
                        dangerMode: true,
                        buttons: 
                        {
                            cancel: "Cancel",
                            login: "Login",
                        },
                    })
                    .then(willDelete => {
                        if (willDelete) {
                            navigate('/login');
                        }
                    });


                }}
                className="ml-2 pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center">
                    <AiOutlineHeart color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Add to favorites
                </span>

                <span
                onClick={()=>{

                    // write mail to function with body link and title subject

                    // window.location.href = 'mailto:?subject=Check out this recipe&body=Check out this recipe on TheCheffRecipes.com: '+window.location.href;

                    navigator.clipboard.writeText(`Hey! Checkout this recipe on thecheffrecipes.com: ${window.location.href}`);

                    swal({
                        title: "Link Copied",
                        text: "Link copied to clipboard",
                        icon: "success",
                        dangerMode: true,
                        buttons:
                        {
                            cancel: "Ok",

                        },
                    })


                }}
                className="ml-2 pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center"><AiOutlineShareAlt color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Share</span>
                <span
                onClick={()=>{
                    
                    PrintElem()
                    

                }}
                className="ml-2 pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center"><AiOutlinePrinter color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Print</span>
            </div>
        )
    }
    return (
        <div className="
            flex
            flex-row
            items-center

            mt-4
            mb-4
        ">
        {
            isDownloadAllowed() ? (
                <PDFDownloadLink document={<MyDoc />} fileName={`${props?.recipe?.attributes?.title}.pdf`} imageResourcesPath="./../../assets/images/" >
                    <span onClick={()=>{
                        handleDownload()
                    }} className="pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center"><FiDownload color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Download</span>
                    <span></span>
                </PDFDownloadLink>
            ):(<>
                <span onClick={()=>{
                    downloadAlert()
                    }} className="pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center"><FiDownload color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Download</span>
                    <span></span>
            </>)
        }
        {
            isSaveAllowed() ? (
            <span
            onClick={()=>{isSaved()?handleUnsave():handleSave()}}
            className="ml-2 pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center"><AiOutlineHeart color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} />{saveloading ?"Loading":isSaved()?"Remvoe from favorites":"Add to favorites"}</span>
            ):(<>
                <span onClick={()=>{
                    saveAlert()
                    }} className="ml-2 pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center"><AiOutlineHeart color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Add to favorites</span>
                    <span></span>
            </>)}

            <span
                onClick={()=>{

                    
                    // navigator.share({
                    //     title: props?.recipe?.attributes?.title,
                    //     text: props?.recipe?.attributes?.description,
                    //     url: window.location.href,
                    // })

                    // copy link to clipboard
                    navigator.clipboard.writeText(`Hey! Checkout this recipe on thecheffrecipes.com: ${window.location.href}`);

                    swal({
                        title: "Link Copied",
                        text: "Link copied to clipboard",
                        icon: "success",
                        dangerMode: true,
                        buttons:
                        {
                            cancel: "Ok",

                        },
                    })


                    // window.location.href = 'mailto:?subject=Check out this recipe&body=Check out this recipe on TheCheffRecipes.com: '+window.location.href;

                }}
                className="ml-2 pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center"><AiOutlineShareAlt color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Share</span>
                <span
                onClick={()=>{

                    
                    PrintElem()

                }}
                className="ml-2 pl-2 pr-2 pt-1 pb-1 text-primary_color text-lg cursor-pointer border-2 border-primary_color rounded-md flex flex-row items-center"><AiOutlinePrinter color={colors.primary_color}  style={{color:colors.primary_color,marginRight:5}} /> Print</span>
        </div>
    );
}

export default Actions;
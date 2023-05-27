import React, { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import "react-responsive-carousel/lib/styles/carousel.min.css"; // requires a loader
import useAuth from "../hooks/useAuth";
import swal from "sweetalert";
import { api } from "../utils/apiCalls";
let user;
let isLogged = false;
function SearchPage(props) {
    const recipes = props.list;
    const ai = props.ai;
    const [loading, setLoading] = useState(true);
    const [loadingai, setLoadingai] = useState(true);
    const navigate = useNavigate();

    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    
    const [freemium, setFreemium] = useState({
        saves:3,
        searches:3,
        downloads:3
    });

    const getThreshold = async () => {

        const {isError, data} = await api(`freemium`, null, 'GET');
        console.log(isError);
        if(isError) {
            swal("Error", data.error.message, "error");
        }else{
            setFreemium(data.data.attributes);
        }
    }
    const searchUsingAI = async () => {
        setLoadingai(true);
        let token = getLoggedObject()?.jwt;
        let ss = `recipessearch?_q=${props?.search}`;

        if(ai){
            ss = ss + `&filters[ai][$eq]=true`;
        }
        const {isError, data} = await api(ss, null, 'GET', token);
        setLoadingai(true);
        console.log(isError);
        

        navigate('/recipe/'+data.recipe.id, {replace: true});
        
        // if(isError) {
        //     swal("Error", data.error.message, "error");
        // }else{
        //     setFreemium(data.data.attributes);
        // }
    }

    const handleLogin = async () => {
        setLoading(true);
        const logged = await checkLogin();
        if(logged){
            isLogged = true;
            user = getLoggedObject();
            handleEmpty()
            getThreshold();
        }else{
            setLoading(false);
            handleEmpty()
            getThreshold();

        }
    }

    const isAIAllowed = () => {
        console.log('check ai' , user);
        // alert(user.)
        if(user.aisearches.length >= freemium.searches){

            if(user && user.subscriptions && user.subscriptions?.length > 0){
                const found = user.subscriptions.find((item) => item.active);
                if(found){

                    if(found.searches<=found.plan.searches)
                    return true;
                }
            }

            return false;
        }
        return true;
    }
    
    useEffect(()=>{
        if(isLoggedIn){
            handleLogin();
        }else{
            setLoading(false);
            handleEmpty()
        }
    },[isLoggedIn])

    const handleEmpty = async () => {

        if(recipes?.length == 0){
            if(!isAIAllowed() || !ai ){
                return;
            }

            searchUsingAI();

            if(isLogged){

                swal({
                    title: "Generating AI Recipes",
                    text: "The recipe you searched is not available, but we are generating AI recipes for you, please wait for 10 seconds before you leave this page",
                    icon: "warning",
                    dangerMode: true,
                    buttons: 
                    {
                        login: "Okay",
                    },
                })
                .then(willDelete => {
                    setTimeout(() => {
                        // window.location.reload();
                    }, 10000);
                });

            }else{
                swal({
                    title: "Login is required",
                    text: "The recipe you searched can only be viewed after you login",
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
            }
        }
    }
    
    return (
        <div className="
            flex
            flex-column
            justify-center
            items-center

            
        ">
            <div className="flex flex-col self-center w-11/12">
            <div className="
                    flex
                    flex-col
                    mb-5
                ">
                    <span className="
                         font-hb
                                    text-2xl
                                    md:text-4xl
                    ">Showing recipes for {decodeURI(props?.search)}</span>

                    <div className="
                        border-b-2
                        border-primary_color
                        w-full
                        mt-2
                    "></div>

                    

                    {recipes?.length==0 && !isLogged && ai && <div className="w-full flex justify-center items-center flex-col">
                        <span className="
                        w-full
                        text-center
                            font-mont
                            font-bold
                            text-xl
                            mt-10
                        ">This search result will be available after you login</span>

                        <Link className="
                        bg-primary_color
                        text-light_text
                        lg:text-sm
                        text-xs
                        lg:px-9
                        px-6
                        lg:py-4
                        py-3
                        rounded-md
                        font-montsemibold
                        font-semibold
                        mt-5
                        
                        " to={"/login"}>Login Now</Link>

                        </div>
                        
                        }

                        {recipes?.length==0 && !isLogged && !ai && <div className="w-full flex justify-center items-center flex-col">
                        <span className="
                        w-full
                        text-center
                            font-mont
                            font-bold
                            text-xl
                            mt-10
                        ">We didn't find any recipes for that, please try Search Rover</span>


                        </div>
                        
                        }


                        {recipes?.length==0 && isLogged && loadingai && <div className="w-full flex justify-center items-center flex-col">
                        <span className="
                        w-full
                        text-center
                            font-mont
                            font-bold
                            text-xl
                            mt-10
                        ">We are getting help from our friends at OPEN AI to write this recipe for you, please wait</span>
                        </div>
                        }

                        {recipes?.length==0 && isLogged && !loadingai &&  <div className="w-full flex justify-center items-center flex-col">
                        <span className="
                        w-full
                        text-center
                            font-mont
                            font-bold
                            text-xl
                            mt-10
                        ">We didn't find that in our recipes collection, please try recipe rover</span>
                        </div>
                        }

                    <div className="
                        flex flex-row
                        flex-wrap
                        items-center
                        mt-5
                    ">
                        {
                            recipes.map((recipe, index) => {
                                return (
                                    <div
                                    onClick={() => {
                                        navigate(`/recipe/${recipe.id}`)
                                    }}
                                    key={`recipe-${index}`} className="
                                        flex flex-col
                                        w-1/4
                                        justify-center
                                        mb-5
                                        cursor-pointer
                                        p-5

                                    ">
                                        <img src={recipe?.attributes?.image?.data?.attributes?.formats?.small?.url} alt="" className="
                                            w-full
                                            h-56
                                            object-cover
                                        "/>
                                        <span className="
                                            font-mont
                                            font-bold
                                            text-xl
                                            mt-2
                                            min-h-[57px]
                                        ">{recipe.attributes.title.substring(0,32)}{recipe.attributes.title.length>32?'...':''}</span>
                                        <span className="
                                            font-mont
                                            mt-2
                                            flex flex-row
                                            md:min-h-[120px]
                                            flex-wrap
                                        ">{recipe.attributes?.description?.substr(0,100)}...<span className="
                                            font-mont
                                            font-bold
                                            text-primary_color
                                        ">View Recipe</span></span>
                                    </div>
                                )
                            })
                        }
                    </div>
                </div>
            </div>
            
        </div>
    );
}

export default SearchPage;
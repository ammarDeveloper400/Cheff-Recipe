import { DiscussionEmbed } from "disqus-react";
import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import useAuth from "../../hooks/useAuth";
import { api } from "../../utils/apiCalls";
import Header from "../layout/Header/Header";
import Actions from "./actions";

let user;
let isLogged = false;
function BlogDetails(props) {

    const [loading, setLoading] = useState(true);
    const [recipe, setRecipe] = useState(null);
    const navigate = useNavigate();
    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    
    const createMarkup = () => {
        return {__html: `${recipe?.attributes?.description}`};
    }
    

    
    useEffect(()=>{
        getRecipe()
    },[])



    const getRecipe = async () => {

        const {isError, data} = await api(`blogs/${props.id}?populate[image]=*&populate[bcategory]=*`, null, 'GET');
        console.log('sections:', data);
        console.log(isError);
        if(isError) {
            // swal("Error", data[k], "error");
            swal("Error", data.error.message, "error");
        }else{
            setRecipe(data.data);
        }
    }

    useEffect(()=>{
        if(recipe){
            setLoading(false);
        }
    },[recipe])

    
    if(loading || !recipe){
        return (
            <div className=" min-h-screen">
                <div className="h-20"></div>
                <div className="flex flex-row justify-center items-center">
                    <span className="font-hr text-primary_color text-2xl">Loading...</span>
                </div>
            </div>
        );
    }
    return (
        <div id='tobeprinted' className="
            flex
            flex-column
            justify-center
            items-center

            
        ">
            <div className="flex flex-col self-center w-11/12">
                <div
                
                className="
                    flex flex-col
                    w-full
                    justify-center
                    mb-5
                    p-5

                ">
                    <img src={recipe?.attributes?.image?.data?.attributes?.url} alt="" className="
                        w-full
                        h-96
                        object-cover
                    "/>
                    <span className="
                        font-mont
                        font-bold
                        text-2xl
                        mt-2
                    ">{recipe.attributes.title}</span>

                    <div dangerouslySetInnerHTML={createMarkup()} className='ck-editor'></div>
                    {recipe.author!=""  && <>
                    <div className="mt-10"></div>
                    <span className="
                        font-hr
                        text-3xl
                    ">Author</span>
                    <span  style={{
                        whiteSpace: 'pre-line'
                    }} className="
                        font-mont
                        mt-2
                    ">{recipe.attributes.author}</span>
                    </>}

                    <div className="h-5"></div>
                    <DiscussionEmbed
                        shortname='the-cheff-recipes'
                        config={
                            {
                                url: window.location.href,
                                identifier: window.location.href,
                            }
                        }
                    />

                </div>
            </div>

            
            
        </div>
    );
}

export default BlogDetails;
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
function RecipeDetails(props) {

    const [loading, setLoading] = useState(true);
    const [recipe, setRecipe] = useState(null);
    const navigate = useNavigate();
    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    
    

    const handleLogin = async () => {
        setLoading(true);
        const logged = await checkLogin();
        if(logged){
            isLogged = true;
            user = getLoggedObject();
        }else{
            navigate('/login', {replace: true});
        }
    }
    
    useEffect(()=>{
        getRecipe()
        if(isLoggedIn){
            handleLogin();
        }
    },[isLoggedIn])



    const getRecipe = async () => {

        const {isError, data} = await api(`recipes/${props.id}?populate[0]=image`, null, 'GET');
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
                    <img src={recipe?.attributes?.image?.data?.attributes?.formats?.small?.url} alt="" className="
                        w-full
                        h-96
                        object-cover
                    "/>
                    <Actions  recipe={recipe} />
                    <span className="
                        font-mont
                        font-bold
                        text-2xl
                        mt-2
                    ">{recipe.attributes.title}</span>

                    {recipe.description!=""  && <>
                    <div className="mt-10"></div>
                    <span className="
                        font-hr
                        text-3xl
                    ">Description</span>
                    <span  style={{
                        whiteSpace: 'pre-line'
                    }} className="
                        font-mont
                        mt-2
                        flex flex-row
                        flex-wrap
                    ">{recipe.attributes.description}</span>
                    </>}
                    {recipe.ingredients!=""  && <>
                    <div className="mt-10"></div>
                    <span className="
                        font-hr
                        text-3xl
                    ">Ingredients</span>
                    <span  style={{
                        whiteSpace: 'pre-line'
                    }} className="
                        font-mont
                        mt-2
                    ">{recipe.attributes.ingredients}</span>
                    </>}
                    {recipe.optional_ingredients!=""  && <>
                    <div className="mt-10"></div>
                    <span className="
                        font-hr
                        text-3xl
                    ">Optional Ingredients</span>
                    <span  style={{
                        whiteSpace: 'pre-line'
                    }} className="
                        font-mont
                        mt-2
                    ">{recipe.attributes.optional_ingredients}</span>
                    </>}
                    {recipe.directions!=""  && <>
                    <div className="mt-10"></div>
                    <span  className="
                        font-hr
                        text-3xl
                    ">Directions</span>
                    <span style={{
                        whiteSpace: 'pre-line'
                    }} className="
                        font-mont
                        mt-2
                    ">{recipe.attributes.directions}</span>
                    </>}
                    {recipe.nutritional_information!=""  && <>
                    <div className="mt-10"></div>
                    <span className="
                        font-hr
                        text-3xl
                    ">Nutrional Information</span>
                    <span className="
                        font-mont
                        mt-2
                    ">{recipe.attributes.nutritional_information}</span>
                    </>}
                    {recipe.note!=""  && <>
                        <div className="mt-10"></div>
                        <span className="
                            font-hr
                            text-3xl
                        ">Notes</span>
                        <span className="
                            font-mont
                            mt-2
                        ">{recipe.attributes.note}</span>
                    </>}
                    {/* <div id="disqus_thread"></div> */}
                    <div className="h-5"></div>
                    <DiscussionEmbed
                        shortname='the-cheff-recipes'
                        config={
                            {
                                url: window.location.href,
                                identifier: window.location.href,
                                // title: this.props.article.title,
                                // language: 'zh_TW' //e.g. for Traditional Chinese (Taiwan)	
                            }
                        }
                    />
                </div>
            </div>
            
        </div>
    );
}

export default RecipeDetails;
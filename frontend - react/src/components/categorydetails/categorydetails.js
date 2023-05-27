import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import { api } from "../../utils/apiCalls";
import ReactMarkdown from "react-markdown";
import Header from "../layout/Header/Header";

function CatDetails(props) {
    const navigate = useNavigate();
    let url = window.location.href;
    let slug = url.substring(url.lastIndexOf('/') + 1);
    const [loaded, setLoaded] = useState(false);

    const [recipes, setRecipes] = useState([]);
    const [cat, setCat] = useState({});

    const getCat = async () => {

        const {isError, data} = await api(`categories/${slug}&populate=*`, null, 'GET');
        // console.log('sub_categori', data);
        if(isError) {
            // console.log(data);
        }else{
            // if(data.data.length==0){
            //     window.location.href = '/404';
            //     return
            // }
            setCat(data.data);
            getRs()
        }
    }

    const getRs = async () => {
        const {isError, data} = await api(`recipes?filters[category][id][$eq]=${slug}&populate=*&fields=title,sub_title,description`, null, 'GET');
        if(isError) {
            // console.log(data);
        }else{
            // if(data.data.length==0){

            //     window.location.href = '/404';
            //     return
            // }
            setRecipes(data.data);
            setLoaded(true);
        }
    }

    useEffect(() => {
        getCat();
    }, [slug, window.location.href]);

    if(!loaded){
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
                    ">{cat.attributes.title} Recipes</span>
                    <span className="
                        font-mont
                        font-bold
                        text-xl
                        mt-2
                    ">{cat.attributes.sub_title}</span>

                    <div className="
                        border-b-2
                        border-primary_color
                        w-full
                        mt-2
                    "></div>

                    {recipes.length==0 && <div className="w-full flex justify-center items-center">
                        <span className="
                        w-full
                        text-center
                            font-mont
                            font-bold
                            text-xl
                            mt-10
                        ">No Recipes Found</span>

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
                                        ">{recipe?.attributes?.title}</span>
                                        <span className="
                                            font-mont
                                            mt-2
                                            flex flex-row
                                            flex-wrap
                                            md:min-h-[120px]
                                        ">{recipe?.attributes?.description?.substr(0,100)}...<span className="
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

export default CatDetails;
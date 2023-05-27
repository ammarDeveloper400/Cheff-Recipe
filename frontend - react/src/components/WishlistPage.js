import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import "react-responsive-carousel/lib/styles/carousel.min.css"; // requires a loader

function WishlistPage(props) {
    const recipes = props.list;

    const navigate = useNavigate();
    
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
                    ">Saved Recipes</span>

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
                                recipe.id = recipe.recipe.id;
                                recipe.attributes = recipe.recipe;
                                console.log(recipe);
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
                                        <img src={recipe?.attributes?.image?.url} alt="" className="
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
                                        ">{recipe?.attributes?.title?.substring(0,32)}{recipe?.attributes?.title?.length>32?'...':''}</span>
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

export default WishlistPage;
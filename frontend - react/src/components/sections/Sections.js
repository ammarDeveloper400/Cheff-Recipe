import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import { api } from "../../utils/apiCalls";

function Sections() {

    const [loading, setLoading] = useState(true);
    const [sections, setSections] = useState([]);
    const navigate = useNavigate();
    useEffect(() => {
        getSections()
    }, []);


    const getSections = async () => {

        const {isError, data} = await api('sections?populate[recipes][populate][image]=recipes&fields=title,sub_title', null, 'GET');
        setLoading(false);
        console.log('sections:', data);
        console.log(isError);
        if(isError) {
            // swal("Error", data[k], "error");
            swal("Error", data.error.message, "error");
        }else{
            setSections(data.data);
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
                {
                    sections.map((section, index) => {
                        return (
                            <div key={`section-${index}`} className="
                                flex
                                flex-col
                                mb-5
                            ">
                                <span className="
                                    font-hb
                                    text-2xl
                                    md:text-4xl
                                ">{section.attributes?.title}</span>
                                <span className="
                                    font-mont
                                    font-bold
                                    text-xl
                                    mt-2
                                ">{section.attributes?.sub_title}</span>

                                <div className="
                                    border-b-2
                                    border-primary_color
                                    w-full
                                    mt-2
                                "></div>

                                <div className="
                                    flex flex-row
                                    flex-wrap
                                    items-center
                                    mt-5
                                ">
                                    {
                                        section.attributes.recipes.data.map((recipe, index) => {
                                            return (
                                                <div
                                                onClick={() => {
                                                    navigate(`/recipe/${recipe.id}`)
                                                }}
                                                key={`recipe-${index}`} className="
                                                    flex flex-col
                                                    md:w-1/4 w-full
                                                    justify-center
                                                    mb-5
                                                    cursor-pointer
                                                    p-5

                                                ">
                                                    <img src={recipe.attributes?.image?.data?.attributes?.formats?.small?.url} alt="" className="
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
                        )
                    })
                }
            </div>
            
        </div>
    );
}

export default Sections;
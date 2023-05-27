import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import { api } from "../../utils/apiCalls";
import ReactMarkdown from "react-markdown";
import Header from "../layout/Header/Header";

function BCatDetails(props) {
    const navigate = useNavigate();
    let url = window.location.href;
    let slug = url.substring(url.lastIndexOf('/') + 1);
    const [loaded, setLoaded] = useState(false);

    const [recipes, setRecipes] = useState([]);
    const [cat, setCat] = useState({});

    const getCat = async () => {

        const {isError, data} = await api(`bcategories/${slug}&populate=*`, null, 'GET');
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
        const {isError, data} = await api(`blogs?filters[bcategory][id][$eq]=${slug}&populate=*&fields=*`, null, 'GET');
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
                    ">{cat.attributes.title} News</span>

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
                        ">No News Found</span>

                        </div>
                        
                        }

                    <div className="
                        flex flex-row
                        flex-wrap
                        items-center
                        mt-5
                    ">
                        {
                            recipes.map((cat, index) => {
                                return (
                                    <div
                                    onClick={() => {
                                        window.location.href = `/blog/${cat.id}`
                                    }}
                                    key={`cat-${index}`} className="
                                        flex flex-col
                                        w-full
                                        justify-center
                                        mb-2
                                        cursor-pointer
                                        p-5
                                    ">
                                        <div className="
                                            w-full
                                            flex
                                            flex-row
                                            
                                        ">
                                            <img src={cat.attributes.image?.data?.attributes?.url} alt="" className="
                                                w-96
                                                h-56
                                                object-cover
                                                mr-5
                                            "/>
                                            <div className="flex flex-col">
                                                <span className="font-mont text-2xl">{cat?.attributes?.title}</span>
                                                <span className="font-mont text-base">{cat?.attributes?.short_description.substring(0,150)}...</span>
                                                <span className="font-mont text-lg text-primary_color">Read More</span>
                                            </div>
                                        </div>
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

export default BCatDetails;
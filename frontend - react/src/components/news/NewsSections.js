import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import { api } from "../../utils/apiCalls";

function NewsSections() {

    const [loading, setLoading] = useState(true);
    const [sections, setSections] = useState([]);
    const [blogs, setblogs] = useState([]);
    const navigate = useNavigate();
    useEffect(() => {
        getNewsCats()
        getBlogs()
    }, []);


    const getNewsCats = async () => {

        const {isError, data} = await api('bcategories?populate[image]=*', null, 'GET');
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

    const getBlogs = async () => {

        const {isError, data} = await api('blogs?populate[image]=*&fields=*', null, 'GET');
        setLoading(false);
        console.log('sections:', data);
        console.log(isError);
        if(isError) {
            // swal("Error", data[k], "error");
            swal("Error", data.error.message, "error");
        }else{
            setblogs(data.data);
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
            <span className="
               font-hb
                                    text-2xl
                                    md:text-4xl
            ">News by category</span>
            <div className="
                border-b-2
                border-primary_color
                w-full
                mt-2
            "></div>
                <div className="
                    flex-wrap
                flex
                flex-column
                items-center
                ">
                    {
                        sections.map((cat, index) => {
                            return (
                                <div
                                onClick={() => {
                                    window.location.href = `/bcategory/${cat.id}`
                                }}
                                key={`cat-${index}`} className="
                                    flex flex-col
                                    md:w-1/4 w-full
                                    justify-center
                                    mb-5
                                    cursor-pointer
                                    p-5
                                ">
                                    <div className="
                                        w-full
                                        h-56
                                        relative
                                    ">
                                        <img src={cat.attributes.image?.data?.attributes?.url} alt="" className="
                                            w-full
                                            h-56
                                            object-cover
                                        "/>
                                        <span className="absolute top-0 left-0 right-0 bottom-0 w-full flex flex-row items-center justify-center font-hr text-4xl text-white bg-black bg-opacity-40">{cat.attributes.title}</span>
                                    </div>
                                </div>
                            )
                        })
                    }
                </div>



                

                <div className="h-5"></div>






                <span className="
                 font-hb
                                    text-2xl
                                    md:text-4xl
                ">Latest News</span>
                <div className="
                    border-b-2
                    border-primary_color
                    w-full
                    mt-2
                "></div>
                <div className="
                    flex-wrap
                    flex
                    flex-column
                    items-center
                ">
                    {
                        blogs.map((cat, index) => {
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
    );
}

export default NewsSections;
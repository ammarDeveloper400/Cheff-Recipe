import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import { api } from "../../utils/apiCalls";
import Header from "../layout/Header/Header";

function Categories() {

    const [loading, setLoading] = useState(true);
    const [cats, setCats] = useState([]);
    const navigate = useNavigate();
    useEffect(() => {
        getcats()
    }, []);


    const getcats = async () => {

        const {isError, data} = await api('categories?populate[0]=image', null, 'GET');
        setLoading(false);
        console.log('cats:', data);
        console.log(isError);
        if(isError) {
            // swal("Error", data[k], "error");
            swal("Error", data.error.message, "error");
        }else{
            setCats(data.data);
        }
    }

    
    if(loading){
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
                <span className="
                                    font-hb
                                    text-2xl
                                    md:text-4xl
                ">Cuisines</span>
                <div className="
                    flex-wrap
                flex
                flex-column
                justify-center 
                items-center
                ">
                    {
                        cats.map((cat, index) => {
                            return (
                                <div
                                onClick={() => {
                                    window.location.href = `/category/${cat.id}`
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
            </div>
            
        </div>
    );
}

export default Categories;
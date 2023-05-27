import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { api } from "../../../utils/apiCalls";

function Footer(props) {

    const [footer, setFooter] = useState({
        copyright:'Copyright 2022 • The Cheffs Recipes',
        pages:{
            data:[]
        }
    });

    const getPages = async () => {

        const {isError, data} = await api('footer?populate=*', null, 'GET');
        if(isError) {
            // console.log(data);
        }else{
            setFooter(data.data.attributes);
        }
    }

    useEffect(() => {

        getPages();
    }, []);
    return (
        <div className=" bg-light_grey dark:bg-dark_grey lg:py-8 py-5 md:flex flex-col justify-center items-center hidden ">

            <div className="mt-5">
                <div className="flex flex-col md:flex-row">
                    {
                        footer?.pages.data.map((page, index) => {
                            return (
                                <a className="ml-2 mr-2" key={index+'lo'} href={`/page/${page.attributes.slug}`}>{page.attributes.title}</a>
                            )
                        })
                    }
                </div>
            </div>
            <div className="md:flex flex-row justify-center items-center hidden mt-5">
                <span className=" text-grey_text dark:text-light_text lg:text-sm text-xs">{footer?.copyright}</span>
            </div>

            
        </div>
    )
}
export default Footer;
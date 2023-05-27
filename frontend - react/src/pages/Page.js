import React, { useEffect, useState } from "react";
import HomeBanner from "../components/banners/HomeBanner";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import AboutUsPage from "../components/pagedetails/AboutUsPage";
import PageDetails from "../components/pagedetails/details";
import RecipeDetails from "../components/recipedetails/details";
import RecipeSearch from "../components/searcher/RecipeSearch";
import Sections from "../components/sections/Sections";
import { api } from "../utils/apiCalls";

function Page({ params }) {
    let url = window.location.href;
    let slug = url.substring(url.lastIndexOf('/') + 1);
    const [loaded, setLoaded] = useState(false);

    const [page, setPage] = useState({});

    const getPage = async () => {

        if(slug=='about-us'){
            const {isError, data} = await api(`about?populate[circleblock][populate][0]=image&populate[banner][populate]=*&populate[gallery][populate]=*&populate[aboutsections][populate][0]=image`, null, 'GET');
            console.log('page', data);
            if(isError) {
                // console.log(data);
            }else{
                if(data.data.length==0){

                    window.location.href = '/404';
                    return
                }
                setPage(data.data);
                setLoaded(true);
            }

        }else{
            const {isError, data} = await api(`pages?filters[slug][$eq]=${slug}&populate[0]=header`, null, 'GET');
            console.log('page', data);
            if(isError) {
                // console.log(data);
            }else{
                if(data.data.length==0){

                    window.location.href = '/404';
                    return
                }
                setPage(data.data[0]);
                setLoaded(true);
            }

        }

    }

    useEffect(() => {
        getPage();
    }, [slug, window.location.href]);


    if(!loaded){
        return (
            <div className=" min-h-screen">
                <Header />
                <div className="h-20"></div>
                <div className="flex flex-row justify-center items-center">
                    <span className="font-hr text-primary_color text-2xl">Loading...</span>
                </div>
            </div>
        );
    }
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>

            {loaded && slug!='about-us' && <PageDetails  page={page} />}
            {loaded && slug=='about-us' && <AboutUsPage  page={page} />}
            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Page;
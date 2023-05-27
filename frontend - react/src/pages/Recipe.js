import React, { useEffect } from "react";
import HomeBanner from "../components/banners/HomeBanner";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import RecipeDetails from "../components/recipedetails/details";
import RecipeSearch from "../components/searcher/RecipeSearch";
import Sections from "../components/sections/Sections";

function Recipe({ params }) {
    let url = window.location.href;
    let id = url.substring(url.lastIndexOf('/') + 1);
    useEffect(() => {
        
    }, []);
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>

            <RecipeDetails  id={id} />
            <div className="h-20"></div>
            <RecipeSearch />
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Recipe;
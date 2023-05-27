import React from "react";
import HomeBanner from "../components/banners/HomeBanner";
import Categories from "../components/categories/categories";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import NewsSections from "../components/news/NewsSections";
import RecipeSearch from "../components/searcher/RecipeSearch";
import Sections from "../components/sections/Sections";

function News() {
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>
            <div className="h-20"></div>
            <NewsSections />
            
            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default News;
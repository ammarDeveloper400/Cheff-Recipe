import React, { useEffect } from "react";
import HomeBanner from "../components/banners/HomeBanner";
import BlogDetails from "../components/blog/details";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import RecipeDetails from "../components/recipedetails/details";
import RecipeSearch from "../components/searcher/RecipeSearch";
import Sections from "../components/sections/Sections";

function Blog({ params }) {
    let url = window.location.href;
    let id = url.substring(url.lastIndexOf('/') + 1);
    useEffect(() => {
        
    }, []);
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>

            <BlogDetails  id={id} />
            <div className="h-20"></div>
            <RecipeSearch />
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Blog;
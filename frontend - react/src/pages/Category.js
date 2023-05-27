import React from "react";
import HomeBanner from "../components/banners/HomeBanner";
import Categories from "../components/categories/categories";
import CatDetails from "../components/categorydetails/categorydetails";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import RecipeSearch from "../components/searcher/RecipeSearch";
import Sections from "../components/sections/Sections";

function Category() {
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>
            <div className="h-20"></div>
            <RecipeSearch />
            <div className="h-20"></div>
            <CatDetails />
            <div className="h-20"></div>
            <Categories />
            <div className="h-20"></div>
            
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Category;
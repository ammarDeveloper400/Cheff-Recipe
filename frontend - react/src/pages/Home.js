import React, { useEffect } from "react";
import swal from "sweetalert";
import HomeBanner from "../components/banners/HomeBanner";
import Categories from "../components/categories/categories";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import RecipeSearch from "../components/searcher/RecipeSearch";
import Sections from "../components/sections/Sections";

function Home() {

    useEffect(() => {

        // check url params for flag verified=true
        let url = window.location.href;
        let id = url.substring(url.lastIndexOf('?verified') + 1);
        console.log('id', id);
        if (id === 'verified=true') {

            // show success message
            swal('Success','Your email has been verified successfully. You can now login to your account.', 'success');
        }
    }, []);
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>
            <HomeBanner />
            <div className="h-20"></div>
            <div className="h-20"></div>
            <RecipeSearch />
            <div className="h-20"></div>
            <Categories />
            <div className="h-20"></div>
            <Sections />
            
            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Home;
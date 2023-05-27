import React from "react";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import {Link} from 'react-router-dom';

function NotFound() {
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>
            <div className="h-20 w-full flex flex-col justify-center items-center">
                <span className="font-mont text-3xl text-dark_text dark:text-light_text ">Page not found</span>
                <Link className="
                bg-primary_color
                text-dark_text
                lg:text-sm
                text-xs
                lg:px-9
                px-6
                lg:py-4
                py-3
                rounded-md
                font-mont
                font-semibold
                mt-5
                " to="/">Back Home</Link>
            </div>
            <div className="h-20"></div>
            <Footer />
        </div>
    );
}

export default NotFound;
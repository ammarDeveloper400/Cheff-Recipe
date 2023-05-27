import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import swal from "sweetalert";
import HomeBanner from "../components/banners/HomeBanner";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import AboutUsPage from "../components/pagedetails/AboutUsPage";
import PageDetails from "../components/pagedetails/details";
import RecipeDetails from "../components/recipedetails/details";
import RecipeSearch from "../components/searcher/RecipeSearch";
import Sections from "../components/sections/Sections";
import WishlistPage from "../components/WishlistPage";
import useAuth from "../hooks/useAuth";
import { api } from "./../utils/apiCalls";


let user;
let isLogged = false;

function Wishlist({ params }) {
    const [loading, setLoading] = useState(true);
    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    const navigate = useNavigate();
    const [list, setSaves] = useState([]);

    const handleLogin = async () => {
        setLoading(true);
        const logged = await checkLogin();
        if(logged){
            isLogged = true;
            setLoading(false);
            user = getLoggedObject();
            getList()
            
        }else{
            navigate('/login', {replace: true});
        }
    }

    const getList = async () => {

        const {isError, data} = await api(`saves`, null, 'GET', user?.jwt);
        console.log(isError);
        if(isError) {
            setLoading(false);
            swal("Error", data.error.message, "error");
        }else{
            setSaves(data);
            setLoading(false);
        }
    }

    
    useEffect(()=>{
        // getSections()
        
        if(isLoggedIn){
            handleLogin();
        }
    },[isLoggedIn])

    
    if(loading){
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
            <WishlistPage list={list} />
            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Wishlist;
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
import SearchPage from "../components/SearchPage";
import Sections from "../components/sections/Sections";
import WishlistPage from "../components/WishlistPage";
import useAuth from "../hooks/useAuth";
import { api } from "./../utils/apiCalls";



function Searchai({ params }) {
    const [loading, setLoading] = useState(true);
    const navigate = useNavigate();
    const [list, setSaves] = useState([]);
    const [searchText, setSearchText] = useState('');

    let url = window.location.href;
    



    const startSearching = async () => {

        let parts = url.split('?');

        if(parts.length < 2){
            setLoading(false);
            return;
        }
        
        let search = url.split('?')[1].split('=')[1];
        setSearchText(search);
        search = decodeURI(search);

        const {isError, data} = await api(`recipes?_q=${search}&populate=*&fields=title,sub_title,description`, null, 'GET');
        console.log(isError);
        if(isError) {
            setLoading(false);
            swal("Error", data.error.message, "error");
        }else{
            setSaves(data.data);
            setLoading(false);
        }
    }

    
    useEffect(()=>{
        startSearching() 
    },[])

    
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

    if(searchText == ''){

        return (
            <div className=" min-h-screen">
                <Header />
                <div className="h-20"></div>
                <RecipeSearch ai={searchText} />
                <div className="h-20"></div>
                <div className="h-20"></div>
                <div className="h-20"></div>
                <div className="h-20"></div>

                <Footer />
            </div>
        )
    }
    
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>

            <RecipeSearch ai={searchText} />
            <div className="h-20"></div>
            <SearchPage search={searchText} list={list} ai={true} />
            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Searchai;
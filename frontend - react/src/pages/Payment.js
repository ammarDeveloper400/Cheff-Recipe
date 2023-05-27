import React, { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
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
import { urls } from "../utils/Api_urls";
import { api, apiAbsolute } from "./../utils/apiCalls";

let user;
let isLogged = false;



function Payment({ params }) {
    const [loading, setLoading] = useState(true);
    const navigate = useNavigate();
    const [list, setSaves] = useState([]);
    const [failed, setFailed] = useState(false);

    let url = window.location.href;
    

    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();

    const handleLogin = async () => {
        const logged = await checkLogin();
        if(logged){
            isLogged = true;
            user = getLoggedObject();
            startGetting() 
        }else{
            navigate('/login')
        }
    }
    
    useEffect(()=>{
        if(isLoggedIn){
            handleLogin();
        }else{
            navigate('/login')
        }
    },[isLoggedIn])

    const startGetting = async () => {

        const secondLastPartOfUrl = url.split('/').slice(-2)[0];

        if(secondLastPartOfUrl == 'success'){

            const params = new URLSearchParams(document.location.search);

            const checkoutSessionId = params.get("sessionId");
            try{
                const {isError, data} = await apiAbsolute(`${urls.PHP_API}/strapi-stripe/retrieveCheckoutSession/${checkoutSessionId}`, null, 'GET');
                console.log('here')
                console.log(data);

                const payload = data;

                if(data.status=='complete'){

                    const {isError, data} = await api(`subscriptions`, {checkoutSessionId: checkoutSessionId,payload}, 'POST', user.jwt);
                    if(isError) {
                        setLoading(false);
                        swal("Error", data.error.message, "error");
                    }else{
                        // setSaves(data.data);
                        console.log(data)
                        setLoading(false);
                        swal("Success", "Payment Successful", "success");

                        setTimeout(()=>{
                            navigate('/subscriptions')
                        }, 2000)
                    }
                }
            }catch(e){
                console.log('here 2')

                console.log(e);
            }
            // if(isError) {
            //     setLoading(false);
            //     swal("Error", data.error.message, "error");
            // }else{
            //     setSaves(data.data);
            //     setLoading(false);
            // }

        }else{
            swal("Error", "Payment Failed", "error");
            setLoading(false);
            setFailed(true);
        }
    }

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

    if(failed)

    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>

            <div className="h-20"></div>
            <div className="flex flex-row justify-center">
                <div className="flex flex-col w-1/3 ">
                    <span className="text-xl text-center ">Payment failed</span>
                    <div className="h-10"></div>
                    <span>Unfortunately the payment you tried is failed, if you think this is an error, please reach out to us or try again.</span>
            <div className="h-20"></div>
            <div className="h-20"></div>

                    <div
                        onClick={()=>{
                            navigate('/pricing')
                        }}
                        className="
                        bg-primary_color
                        text-light_text
                        lg:text-sm
                        text-xs
                        lg:px-9
                        px-6
                        lg:py-4
                        py-3
                        rounded-md
                        font-semibold
                        text-center
                        w-full
                        md:w-4/6
                        self-center
                        cursor-pointer
                        " >Try Again</div>
                </div>
            </div>
            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );



    
    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>

            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Payment;
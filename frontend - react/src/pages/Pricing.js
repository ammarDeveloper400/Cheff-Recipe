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
import useAuth from "../hooks/useAuth";
import { api, apiAbsolute } from "../utils/apiCalls";
import { urls } from "../utils/Api_urls";
let user;
let isLogged = false;
function Pricing({ params }) {
    const [loaded, setLoaded] = useState(false);

    const [plans, setPlans] = useState([]);
    const [loadignIndex, setLoadignIndex] = useState(-1);
    const [subs, setSubs] = useState([]);

    const [current, setCurrent] = useState(0);
    const [msg, setMsg] = useState('');
    const navigate = useNavigate();
    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    
    

    const handleLogin = async () => {
        const logged = await checkLogin();
        if(logged){
            isLogged = true;
            user = getLoggedObject();
            getPlans()
            getSubscriptions()
        }else{
            getPlans()
        }
    }
    
    useEffect(()=>{
        if(isLoggedIn){
            handleLogin();
        }else{
            getPlans()
        }
    },[isLoggedIn])

    const getPlans = async () => {
        const {isError, data} = await api(`plans?populate[1]=image&populate[2]=plan_benefits`, null, 'GET');
        if(isError) {
        }else{
            if(data.data.length==0){
                window.location.href = '/404';
                return
            }
            setPlans(data.data);
            setLoaded(true);
        }
    }

    const getSubscriptions = async () => {
        const {isError, data} = await api(`subscriptions`, null, 'GET', user?.jwt);
        if(isError) {
        }else{
            setSubs(data)
        }
    }

    useEffect(()=>{

        if(subs.length>0){


            let isActive = false;
            let currendId = 0;

            for(let i=0; i<subs.length; i++){
                if(subs[i].active){
                    isActive = true;
                    currendId = subs[i].plan.id;
                }
            }

            if(isActive){
                setCurrent(currendId);
            }

        }
    },[subs])


    function SS_ProductCheckout(productId, baseUrl, userEmail) {
            localStorage.setItem('strapiStripeUrl', baseUrl);
            const getProductApi = baseUrl + '/strapi-stripe/getProduct/' + productId;
            const checkoutSessionUrl = baseUrl + '/strapi-stripe/createCheckoutSession/';
        
            fetch(getProductApi, {
            method: 'get',
            mode: 'cors',
            headers: new Headers({
                'Content-Type': 'application/json',
            }),
            })
            .then(response => response.json())
            .then(response => {
                fetch(checkoutSessionUrl, {
                method: 'post',
                body: JSON.stringify({
                    stripePriceId: response.stripePriceId,
                    stripePlanId: response.stripePlanId,
                    isSubscription: response.isSubscription,
                    productId: response.id,
                    productName: response.title,
                    userEmail,
                }),
                mode: 'cors',
                headers: new Headers({
                    'Content-Type': 'application/json',
                }),
                })
                .then(response => response.json())
                .then(response => {
                    if (response.id) {
                    window.location.replace(response.url);
                    }
                });
            });
    }

    const getSubButton = (p,i)=>{


        if(i==loadignIndex){
            return "Loading..."
        }

        if(current == p.id){
            return "Unsubscribe"
        }


        if(current!=0)
        return "Switch To This Plan"
        return "Subscribe"
    }

    const unsubscribe = async (p,i) => {

        // confirm first with swal and ask for reason
        const { value: reason, willDelete } = await swal({
            title: "Are you sure?",
            text: "Once unsubscribed, you will not be able to access the premium features! And we only process refunds manually.",
            content: "input",
            icon: "warning",
            buttons: true,
            dangerMode: true,
            inputPlaceholder: "Reason for unsubscribing",
        });

        if(willDelete){
            const {isError, data} = await api(`subscriptions/unsubscribe`, {id:p.id, msg:reason}, 'PUT', user.jwt);
            if(isError) {
                setLoaded(false);
                swal("Error", data.error.message, "error");
            }else{
                swal("Success", "You have successfully unsubscribed from this plan. For refund, we will get back to you within 7 working days", "success");
                getPlans()
                getSubscriptions()
            }
        } else {
            swal("Your plan is safe!");
        }
    }

    const startSubscribing = (p,i) => {
        if(current!=0 && p.id==current){
            unsubscribe(p,i)
        }else{
            setLoadignIndex(i)
            SS_ProductCheckout(p.attributes.stripe_id, urls.PHP_API, user.email);
        }
    }

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
            <div className="
            flex-wrap
            flex flex-row justify-evenly ">
                {
                    plans.map((plan, index) => {
                        return (
                            <div className="
                                flex flex-col justify-center items-center w-full md:w-1/3 bg-white p-4 rounded-xl">
                            
                                <div
                                    key={`plan-${index}`} className="
                                        flex flex-col
                                        w-full 
                                        justify-center
                                        mb-5
                                        cursor-pointer
                                        p-5
                                    ">
                                        <div className="
                                            w-full
                                            h-56
                                            relative
                                        ">
                                            <img src={plan.attributes.image?.data?.attributes?.url} alt="" className="
                                                w-full
                                                h-56
                                                object-cover
                                            "/>
                                            <span className="absolute top-0 left-0 right-0 bottom-0 w-full flex flex-row items-center justify-center font-hr text-4xl text-white bg-black bg-opacity-40 text-center">{plan.attributes.title}</span>
                                        </div>
                                    </div>
                                <div className="flex flex-row justify-center items-center min-h-[64px]">
                                    <span className="font-hr text-primary_color text-2xl text-center">{plan.attributes.sub_title}</span>
                                </div>
                                <div className="flex flex-row justify-center items-center mt-5">
                                    <span className="font-mont text-primary_color text-xl text-center">{plan.attributes.price} / {plan.attributes.type}</span>
                                </div>
                                <div className="mt-5"></div>

                                {
                                    plan.attributes.plan_benefits.map((benefit, index) => {
                                        return (
                                            <div key={`b-${index}`} className="flex flex-row justify-center items-center mb-3">
                                                <input type="checkbox" disabled checked={benefit.available} className="mr-2" /><span className="font-mont text-dark_color text-xl">{benefit.title}</span>
                                            </div>
                                        )
                                    })
                                }

                                <div className="mt-5"></div>

                                <div className="flex flex-row justify-center items-center">
                                    <button onClick={()=>{

                                        if(isLogged){
                                            startSubscribing(plan,index);
                                            
                                        }else{

                                            swal({
                                                title: "Login is required",
                                                text: "Please sign in to save this recipe, when you signin, you get some free saves too",
                                                icon: "warning",
                                                dangerMode: true,
                                                buttons: 
                                                {
                                                    cancel: "Cancel",
                                                    login: "Login",
                                                },
                                            })
                                            .then(willDelete => {
                                                if (willDelete) {
                                                    navigate('/login');
                                                }
                                            });
                                        }

                                    }}   type="button"  data-url={urls.PHP_API} className="SS_ProductCheckout bg-primary_color text-white font-mont text-xl px-5 py-2 rounded-xl">{getSubButton(plan, index)}</button>
                                </div>

                                
                            </div>
                        )
                    })
                }
            </div>
            <div className="h-20"></div>
            <div className="h-20"></div>
            <div className="h-20"></div>

            <Footer />
        </div>
    );
}

export default Pricing;
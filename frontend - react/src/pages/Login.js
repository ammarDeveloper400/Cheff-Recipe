import React, { useEffect, useState } from "react";
import FormInput from "../components/form/forminput";
import SocialButtons from "../components/form/SocialButtons";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import {Link, useNavigate} from 'react-router-dom';
import useAuth from "../hooks/useAuth";
import swal from 'sweetalert';
import { api } from "../utils/apiCalls";
import { validateEmail } from "../utils/functions";

function Login() {

    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    const [loading, setLoading] = useState(false);
    const navigate = useNavigate();
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");

    const loginNow = async () => {
        if(loading) return;

        const payload = {
            identifier:email,
            password
        }

        let valid = await validate(payload);

        setLoading(true);

        if(valid){

            const {isError, data} = await api('auth/local', payload, 'POST');
            setLoading(false);
            console.log('login:', data);
            console.log(isError);
            if(isError) {
                // swal("Error", data[k], "error");
                let msg = data.error.message;
                if(msg == "Invalid identifier or password"){
                    msg = "Invalid email or password";
                }
                swal("Error", msg, "error");
            }else{
                swal("Success", "Logged In successfully!", "success");
                setLoggedObject(data);
                navigate('/');
            }
            
        }
    }

    const showInvalid = (msg) => {
        swal("Error", msg, "error");
    }

    const validate = async (payload) => {

        if(!validateEmail(payload.identifier)){
            showInvalid("Please provide a valid email address");
            return false;
        }

        if(payload.password.length < 8){
            showInvalid("Password must be at least 8 characters long");
            return false;
        }

        return true;
    }

    
    const handleLogin = async () => {

        setLoading(true);
        const logged = await checkLogin();
        console.log('i was here')
        if(logged){
            console.log('i was here aaa')

            // alert('lol')
            navigate('/', {replace: true});
        }else{
            setLoading(false);
        }
    }
    
    useEffect(()=>{
        if(isLoggedIn){
            handleLogin();
        }
    },[isLoggedIn])

    const getLoginClasss = () => {

        let classes =  `
        bg-primary_color
        text-white
        lg:text-sm
        text-xs
        lg:px-9
        px-6
        lg:py-4
        py-3
        rounded-md
        font-semibold
        font-semibold
        cursor-pointer
        text-center
        cursor-pointer
        
        `;

        if(loading){

            classes += `
            opacity-50
            pointer-events-none

            cursor-not-allowed

            `;
        }

        return classes;
    }

    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-10"></div>
                <div className="flex flex-col justify-center items-center">
                    <div className="md:w-4/6 w-11/12 flex lg:flex-row flex-col self-center max-w-5xl rounded-md overflow-hidden items-center justify-center">
                        {/* <div className="lg:flex flex-row w-3/6 hidden items-center justify-center">
                            <img alt="login" className="w-full" src={require('./../assets/images/login-banner.png')} />
                        </div>
                        <div className="lg:hidden flex-row flex w-full items-center justify-center">
                            <img alt="login" className="w-full" src={require('./../assets/images/login-banner-phone.png')} />
                        </div> */}
                        <div className="flex flex-row lg:w-4/5 pt-5 md:w-full sm:w-full items-center justify-center bg-light_grey dark:bg-dark_grey4  px-7 md:px-0">
                            <div className="w-11/12 self-center flex flex-col">
                                <div className="lg:mt-0 mt-5">
                                    <div className="font-montbold font-extrabold text-xl text-dark_text dark:text-light_text ">Log in to your account</div>
                                    <div className="font-mont lg:mt-2 mt-1 text-base text-dark_grey3 dark:text-light_text ">Fill in your information</div>
                                </div>
                                <div className="h-16"></div>

                                <FormInput
                                placeholder="Enter email"
                                label="Email"
                                required={true}
                                type="email"
                                defaultValue={email}
                                onChange={setEmail}
                                />
                                <div className="h-5"></div>
                                <FormInput
                                placeholder="******"
                                label="Password"
                                required={true}
                                type="password"
                                defaultValue={password}
                                onChange={setPassword}
                                />

                                <div className="h-6"></div>

                                <div className="flex flex-row justify-between items-center">
                                    <label htmlFor="rememberMe" className="flex flex-row items-center">
                                        <input id="rememberMe" type="checkbox" className="mr-2" />
                                        <span className="font-mont font-semibold text-sm text-dark_text dark:text-light_text">Remember me</span>
                                    </label>
                                    <div className="flex flex-row items-center justify-end">
                                        <span onClick={()=>{
                                            navigate('/forgot')
                                        }} className="font-mont font-semibold text-sm text-dark_text dark:text-light_text cursor-pointer">Forgot password?</span>
                                    </div>
                                </div>
                                <div className="h-10"></div>
                                <div
                                onClick={loginNow}
                                className={getLoginClasss()}>{loading?"Logging In...":"Login"}</div>

                                <div className="h-6"></div>

                                <div className="flex flex-row lg:justify-center items-center justify-start">
                                    <div className="flex flex-row items-center justify-end">
                                        <span className="font-mont  text-sm text-dark_text dark:text-light_text cursor-pointer">Don't have account?</span>
                                    </div>
                                    <div className="flex flex-row items-center justify-end ml-2.5">
                                        <Link to="/signup" className="font-montbold text-sm text-dark_text dark:text-light_text cursor-pointer">Sign Up</Link>
                                    </div>
                                </div>
                                <div className="h-12"></div>
                                <div className="flex flex-row lg:justify-center items-center justify-start">
                                    <SocialButtons />
                                </div>
                                <div className="h-5"></div>


                            </div>
                        </div>
                    </div>
                </div>
            <div className="h-10"></div>
            <Footer />
        </div>
    );
}

export default Login;
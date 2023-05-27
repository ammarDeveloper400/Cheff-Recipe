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
import Loading from "../components/loading/Loading";

function Signup() {

    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    const navigate = useNavigate();
    const [email, setEmail] = useState(`${Date.now()}-mahev@gmail.com`);
    const [password, setPassword] = useState("1234567%");
    const [password2, setPassword2] = useState("1234567%");
    const [fname, setFName] = useState("Mahev");
    const [lname, setLName] = useState("Faisal");
    const [phone, setPhone] = useState("03009550284");
    const [loading, setLoading] = useState(false);

    const signup = async () => {
        
        if(loading) return;
        const payload = {
            email,
            password,
            username: email,
            re_password: password2,
        }
        

        let valid = await validate(payload);

        if(valid){
            setLoading(true);

            const {isError, data} = await api('auth/local/register', payload, 'POST');
            console.log('signup:', data);
            console.log(isError);
            let k = Object.keys(data)[0];
            setLoading(false);
            if(isError) {
                // swal("Error", data[k], "error");
                swal("Error", data.error.message, "error");
            }else{
                swal("Success", "Registered successfully! Please verify your email address by visiting the link we sent you to continue logging in", "success");
                navigate('/login');
            }
        }
    }

    const showInvalid = (msg) => {
        swal("Error", msg, "error");
    }

    const validate = async (payload) => {

        if(!validateEmail(payload.email)){
            showInvalid("Please provide a valid email address");
            return false;
        }

        if(payload.password.length < 8){
            showInvalid("Password must be at least 8 characters long");
            return false;
        }

        if(payload.password !== payload.re_password){
            showInvalid("Passwords do not match");
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

    return (
        <div className=" min-h-screen">
            <Header />
            <div className="h-20"></div>
                <div className="flex flex-col justify-center items-center">
                    <div className="w-11/12 flex lg:flex-row flex-col self-center max-w-7xl rounded-md overflow-hidden items-center justify-center">
                        {/* <div className="lg:flex flex-row w-3/6 hidden items-center justify-center">
                            <img alt="login" className="w-full" src={require('./../assets/images/login-banner.png')} />
                        </div>
                        <div className="lg:hidden flex-row flex w-full items-center justify-center">
                            <img alt="login" className="w-full" src={require('./../assets/images/login-banner-phone.png')} />
                        </div> */}
                        <div className="flex flex-row lg:w-4/5 pt-5 md:w-full sm:w-full  items-center justify-center bg-light_grey dark:bg-dark_grey4 px-7 md:px-0">
                            <div className="w-11/12 self-center flex flex-col">
                                <div className="flex flex-row justify-between items-center">
                                    <div className="lg:mt-0 mt-5">
                                        <div className="font-montbold font-extrabold text-xl text-dark_text dark:text-light_text ">Welcome!</div>
                                        <div className="font-mont lg:mt-2 mt-1 text-base text-dark_grey3 dark:text-light_text ">Fill in your information</div>
                                    </div>
                                    <div className="hidden lg:block">
                                        <SocialButtons />
                                    </div>
                                </div>
                                <div className="h-14"></div>

                                {/* <div className="flex flex-col md:flex-row md:justify-between justify-center items-center">
                                    <div className="md:w-3/6 w-full md:pr-2.5">
                                        <FormInput
                                            placeholder="First name"
                                            label="First name"
                                            required={true}
                                            type="text"
                                            defaultValue={fname}
                                            onChange={setFName}
                                        />
                                    </div>
                                    <div className="h-5 md:hidden"></div>
                                    <div className="md:w-3/6 w-full md:pl-2.5">
                                        <FormInput
                                            placeholder="Last name"
                                            label="Last name"
                                            required={true}
                                            type="text"
                                            defaultValue={lname}
                                            onChange={setLName}
                                        />
                                    </div>
                                </div> */}
                                <div className="h-5"></div>

                                <div className="flex flex-col md:flex-row md:justify-between justify-center items-center">
                                    <FormInput
                                        placeholder="Email"
                                        label="Email"
                                        required={true}
                                        type="email"
                                        defaultValue={email}
                                        onChange={setEmail}

                                    />
                                </div>
                                <div className="h-5"></div>

                                <div className="flex flex-col md:flex-row md:justify-between justify-center items-center">
                                    <div className="md:w-3/6 w-full md:pr-2.5">
                                        <FormInput
                                            placeholder="Password"
                                            label="Password"
                                            required={true}
                                            type="password"
                                            defaultValue={password}
                                            onChange={setPassword}
                                        />
                                    </div>
                                    <div className="h-5 md:hidden"></div>
                                    <div className="md:w-3/6 w-full md:pl-2.5">
                                        <FormInput
                                            placeholder="Confirm password"
                                            label="Confirm password"
                                            required={true}
                                            type="password"
                                            defaultValue={password}
                                            onChange={setPassword2}

                                        />
                                    </div>
                                </div>


                                
                                <div className="h-14"></div>
                                <div
                                onClick={signup}
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
                                
                                
                                " >{loading?"Please wait...":"Sign Up"}</div>

                                <div className="h-10"></div>

                                <div className="flex flex-row md:justify-center justify-start items-center">
                                    <div className="flex flex-row items-center justify-end">
                                        <span className="font-mont  text-sm text-dark_text dark:text-light_text cursor-pointer">Already have an account?</span>
                                    </div>
                                    <div className="flex flex-row items-center justify-end ml-2.5">
                                        <Link to="/login" className="font-montbold font-extrabold text-sm text-dark_text dark:text-light_text cursor-pointer">Log In</Link>
                                    </div>
                                </div>
                                <div className="h-6"></div>
                                <div className="lg:hidden flex justify-start">
                                    <SocialButtons />
                                </div>
                                <div className="h-6"></div>

                                

                            </div>
                        </div>
                    </div>
                </div>
            <div className="h-10"></div>
            <Footer />
        </div>
    );
}

export default Signup;
import React, { useEffect, useState } from "react";
import FormInput from "../components/form/forminput";
import SocialButtons from "../components/form/SocialButtons";
import Footer from "../components/layout/Footer/Footer";
import Header from "../components/layout/Header/Header";
import {Link, useNavigate} from 'react-router-dom';
import useAuth from "../hooks/useAuth";
import swal from 'sweetalert';
import { api } from "../utils/apiCalls";
import { useForceUpdate, validateEmail } from "../utils/functions";
import UserIcon from "../assets/svg/UserIcon";
import { urls } from "../utils/Api_urls";
let user;
function Changepassword() {

    let inputElement = null;

    const {getLoggedObject, setLoggedObject, isLoggedIn, checkLogin} = useAuth();
    const [loading, setLoading] = useState(true);
    const navigate = useNavigate();
    const [email, setEmail] = useState("");
    const [username, setUsername] = useState("");
    const [phone, setPhone] = useState("");
    const [fullname, setFullname] = useState("");
    const [address, setAddress] = useState("");
    const [pic, setPic] = useState("");
    const [file, setFile] = useState(null);
    const [currentPassword, setCurrentPassword] = useState("");
    const [passwordConfirmation, setPasswordConfirmation] = useState("");
    const [password, setPassword] = useState("");
    const forceUpdate = useForceUpdate()

    const loginNow = async () => {
        if(loading) return;

        const payload = {
            currentPassword,
            password,
            passwordConfirmation
        }

        let valid = await validate(payload);
        if(!valid) return;

        setLoading(true);

        if(valid){

            const {isError, data} = await api('auth/change-password', payload, 'POST', getLoggedObject()?.jwt);
            setLoading(false);
            console.log('login:', data);
            console.log(isError);
            if(isError) {
                // swal("Error", data[k], "error");
                swal("Error", data.error.message, "error");
            }else{
                swal("Success", "Profile updated sucessfully!", "success");
                setLoggedObject(data);

                setTimeout(() => {
                    window.location.reload();
                }, 1500);
            }

            const formData = new FormData();
            formData.append('ref', 'plugin::users-permissions.user');
            formData.append('refId', user?.id);
            formData.append('field', 'pic');
            // formData.append('path', '');


            formData.append('files', file);

            const config = {
                method: 'POST',
                headers: {
                    'Accept': 'application/json',
                    'Authorization': 'Bearer ' + getLoggedObject()?.jwt
                },
                body: formData,
            };
            const url = urls.API + 'upload';
            // use fetch
            await fetch(url, config).then(res => res.json()).then(data => {
                    console.log(data);
                    if(data.length > 0){
                        setPic(data[0].url);
                        forceUpdate();
                    }
                }).catch(err => {
                    console.log(err);
                }
            );
            
        }
    }

    const showInvalid = (msg) => {
        swal("Error", msg, "error");
    }

    const validate = async (payload) => {

        if(!payload.password){
            showInvalid("Current password is required");
            return false;
        }
        

        
        if(!payload.passwordConfirmation || payload.passwordConfirmation.length < 8){
            showInvalid("Password confirmation is required and must be at least 8 characters");
            return false;
        }

        if(payload.password !== payload.passwordConfirmation){
            showInvalid("Password and password confirmation must match");
            return false;
        }

        

        return true;
    }

    
    const handleLogin = async () => {
        const logged = await checkLogin();
        if(logged){
            user = getLoggedObject();
            setEmail(user.email);
            setUsername(user?.username);
            setPhone(user?.phone);
            setFullname(user?.fullname);
            setAddress(user?.address);
            setPic(user?.pic?.formats?.thumbnail?.url);
            console.log(user?.pic?.formats)
            forceUpdate();
            setLoading(false);
        }else{
            navigate('/login', {replace: true});
        }
    }
    
    useEffect(()=>{
        if(isLoggedIn){
            handleLogin();
        }else{
            navigate('/login', {replace: true});
        }
    },[isLoggedIn])

    const handleFileUpload = async (e) => {

        const file = e.target.files[0];
        if(!file) return;

        setFile(file);

        PreviewImage();

        
    }
    const PreviewImage= ()=> {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("file").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };

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
                                    <div className="font-montbold font-extrabold text-center text-xl text-dark_text dark:text-light_text ">My Profile</div>
                                </div>

                                <div className="h-16"></div>
                                <FormInput
                                placeholder={"Current Password"}
                                label="Current Password"
                                required={true}
                                type="password"
                                defaultValue={currentPassword}
                                onChange={setCurrentPassword}
                                />
                                <div className="h-5"></div>

                                <FormInput
                                placeholder={"New Password"}
                                label="New Password"
                                required={true}
                                type="password"
                                defaultValue={password}
                                onChange={setPassword}
                                />
                                <div className="h-5"></div>
                                <FormInput
                                placeholder={"Confirm New Password"}
                                label="Confirm New Password"
                                required={true}
                                type="password"
                                defaultValue={passwordConfirmation}
                                onChange={setPasswordConfirmation}
                                />
                                <div className="h-5"></div>

                                <div className="h-6"></div>

                                <div className="h-10"></div>
                                <div
                                onClick={loginNow}
                                className={getLoginClasss()}>{loading?"Updating...":"Update"}</div>

                                <div className="h-6"></div>

                                
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

export default Changepassword;
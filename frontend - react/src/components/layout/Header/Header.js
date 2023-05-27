import React, { useState, useEffect } from "react";
import "./header.css";
import useDarkMode from "../../../hooks/useDarkMode";
import SunIcon from "../../../assets/svg/sun";
import colors from "../../../utils/colors";
import MoonIcon from "../../../assets/svg/moon";
import WhiteBars from "../../../assets/svg/white-bars";
import BlackBars from "../../../assets/svg/black-bars";
import {Link, Navigate, useNavigate} from 'react-router-dom';
import useAuth from "../../../hooks/useAuth";
import UserIcon from "../../../assets/svg/UserIcon";
import DropArrow from "../../../assets/svg/DropArrow";

function Header(props) {

    const [colorTheme, setTheme] = useDarkMode();
    const [mobileMenu, setMobileMenu] = useState(false);
    const [userMenu, setUserMenu] = useState(false);
    const {isLoggedIn, getLoggedObject, setLoggedObject, checkLogin} = useAuth();
    const [logged, setLogged] = useState(isLoggedIn);
    const navigate = useNavigate();

    const links = [
        {
            name: "Home",
            link: "/",
            isPhone: false
        },
        {
            name: "Pricing",
            link: "/pricing",
            isPhone: false

        },
        {
            name: "Search Recipes",
            link: "/search-recipe",
            isPhone: false
        },
        {
            name: "News",
            link: "/news",
            isPhone: false
        },
        {
            name: "About",
            link: "/page/about-us",
            isPhone: false
        },
        {
            name: "My Profile",
            link: "/profile",
            isPhone: true
        },
        {
            name: "Change Password",
            link: "/change-password",
            isPhone: true
        },
        {
            name: "My Subscriptions",
            link: "/subscriptions",
            isPhone: true
        },
        {
            name: "Favorites",
            link: "/favorites",
            isPhone: true
        },
        {
            name: "Logout",
            link: "/logout",
            isPhone: true
        },



    ]

    const activeLink = (l) => {

        let link = window.location.pathname;
        if(link===(l.link)){
            return " text-primary_color "
        }
        return " text-dark_text dark:text-light_text "

    }

    useEffect(() => {

        handleLogin()

    }, [])

    const handleLogin = async () => {

        const logged = await checkLogin();
        if(!logged){
            setLogged(false)
        }
    }

    const toggleDarkMode = (e) => {
        e.preventDefault();
        setTheme(colorTheme);
    }


    const getAuthBtnText = () =>{
        const currentPage = window.location.pathname;

        if(currentPage === "/login"){
            return "Sign Up";
        }
        else if(currentPage === "/signup"){
            return "Login";
        }
        return "Login/Sign Up";
    }

    const getAuthBtnLink = () =>{
        const currentPage = window.location.pathname;

        if(currentPage === "/login"){
            return "/signup";
        }
        else if(currentPage === "/signup"){
            return "/login";
        }
        return "/login";
    }

    const logout = () => {
        localStorage.removeItem('auth');
        setTimeout(() => {
            setLoggedObject(null);
            navigate('/login');
        }, 1000);
        
    }
    

    const darkModeButton = () => {

        return (
            <div className="
                bg-light_grey
                dark:bg-dark_grey
                flex justify-end
                items-center
                rounded-2.2xl
                p-1.5
                ml-2.5
                cursor-pointer
                " onClick={toggleDarkMode}>
                <div className={"w-7 h-7 rounded-full flex justify-center items-center mr-2.5 " + (colorTheme!=='light' ? " bg-primary_color " : "") }>
                    <SunIcon fill={colorTheme!=='light' ? colors.primary_color : colors.dark_grey2} stroke={colorTheme!=='light' ? colors.white_color : colors.light_grey2} />
                </div>
                <div className={"w-7 h-7 rounded-full flex justify-center items-center ml-2.5 " + (colorTheme==='light' ? " bg-dark_grey3 " : "") }>
                    <MoonIcon fill={colorTheme==='light' ? colors.primary_color : colors.dark_text} />
                </div>
            </div>
        )
    }

    const userShower = () => {


        return (

            <div className="flex items-center flex-row cursor-pointer relative" onClick={()=>setUserMenu(!userMenu)}>
                <div className="flex items-center flex-row">
                    {getLoggedObject()?.pic!=null ? <img src={getLoggedObject()?.pic?.formats?.thumbnail?.url} className="w-12 h-12 rounded-full" /> : <UserIcon />}
                </div>
                <div className="flex items-center flex-row ml-2.5">
                    <DropArrow />
                </div>
                {
                    userMenu && (

                        <div className="absolute top-10 right-0 bg-white dark:bg-dark_grey3 rounded-2.2xl shadow-lg w-40 py-2.5 px-2.5" style={{zIndex:9}}>
                            <div className="flex items-center flex-col justify-center">
                                <div className="flex items-center flex-row">
                                {getLoggedObject()?.pic!=null ? <img src={getLoggedObject()?.pic?.formats?.thumbnail?.url} className="w-12 h-12 rounded-full" /> : <UserIcon />}
                                </div>
                                <div className="flex items-center flex-row mt-5">
                                    <p title={getLoggedObject()?.username} className="text-dark_text dark:text-light_text font-bold text-sm flex-wrap wrap w-full overflow-hidden">{getLoggedObject()?.username?.substr(0,14)}{getLoggedObject()?.user?.username?.length>14?'...':''}</p>
                                </div>
                            </div>
                            <div className="flex items-center flex-row justify-center mt-5">
                                <div className="flex items-center flex-row">
                                    <Link to="/profile" className="text-dark_text dark:text-light_text font-bold text-sm">My Profile</Link>
                                </div>
                            </div>
                            <div className="flex items-center flex-row justify-center mt-2.5">
                                <div className="flex items-center flex-row">
                                    <Link to="/change-password" className="text-dark_text dark:text-light_text font-bold text-sm">Change Password</Link>
                                </div>
                            </div>
                            <div className="flex items-center flex-row justify-center mt-2.5">
                                <div className="flex items-center flex-row">
                                    <Link to="/favorites" className="text-dark_text dark:text-light_text font-bold text-sm">Favorites</Link>
                                </div>
                            </div>
                            <div className="flex items-center flex-row justify-center mt-2.5">
                                <div className="flex items-center flex-row">
                                    <Link to="/subscriptions" className="text-dark_text dark:text-light_text font-bold text-sm">My Subscriptions</Link>
                                </div>
                            </div>
                            <div className="flex items-center flex-row justify-center mt-2.5" onClick={()=>logout()}>
                                <div className="flex items-center flex-row">
                                    <div className="text-dark_text dark:text-light_text font-bold text-sm">Logout</div>
                                </div>
                            </div>
                        </div>

                    )
                }
            </div>
        )
    }

    const loginSignupButton = (phone)=>{
        if(logged){
            if(phone)
            return <></>
            return userShower();
        }

        return (
            <Link className="
            bg-primary_color
            text-light_text
            lg:text-sm
            text-xs
            lg:px-9
            px-6
            lg:py-4
            py-3
            rounded-md
            font-montsemibold
            font-semibold
            
            " to={getAuthBtnLink()}>{getAuthBtnText()}</Link>
        )
    }

    const menuToggler = () => {
        return (<div className=" cursor-pointer" onClick={()=>{setMobileMenu(!mobileMenu)}}>
            <span className="hidden dark:block"><WhiteBars /></span>
            <span className="block dark:hidden"><BlackBars /></span>
        </div>)
    }

    const linksBox = (isPhone=false)=>{

        return links.map((link, index) => {

            if(!isPhone && index===0) return <div key={index}></div>
            if(!isPhone && link.isPhone) return <div key={index}></div>
            if(link.link=='/logout')
            return (
                <span
                onClick={()=>logout()} 
                key={index}
                className={" cursor-pointer text-sm font-bold font-montsemibold  " + (isPhone ? " py-5 ": " lg:px-5 px-2.5 ") + (activeLink(link))}
                >
                    {link.name}
                </span>
            )
            return (
                <Link
                key={index}
                className={" text-sm font-bold font-montsemibold  " + (isPhone ? " py-5 ": " lg:px-5 px-2.5 ") + (activeLink(link))}
                to={link.link}>{link.name}</Link>
            )
        })
    }
    

    // mobile view

    const mobileMenuBox=()=>{
        if(mobileMenu)
        return (
            <div className=" absolute top-0 right-0 left-0 bottom-0  z-10 h-screen " onClick={()=>{setMobileMenu(false)}}>
                <div className=" absolute top-0 right-0 z-20 bg-bodybg dark:bg-bodybgdark px-10 py-5 flex flex-col items-center h-screen  justify-between shadow-md">
                    <div className=" flex flex-col items-center mt-2">
                        <div className="h-10"></div>
                        <div className="flex flex-col items-center">
                            {linksBox(true)}
                        </div>
                        <div className="h-10"></div>
                        {/* {darkModeButton()} */}
                    </div>
                    <div>
                        <div className=" mb-20 ">
                            {loginSignupButton(true)}
                        </div>
                    </div>
                </div>
            </div>
        )
        return (<></>)
    }
    return (
        <>
        <div className="hidden md:flex items-center justify-center font-mont ">
            <div className="flex items-center justify-between w-11/12 py-5 px-0">
                <Link to="/" className="flex-initial w-1/4">
                    <img className="w-36" src={require('./../../../assets/images/logos/white-logo.png')} alt="logo" />
                </Link>

                <div className="flex flex-row flex-initial w-3/4 justify-end items-center">
                    <div className="">
                        {linksBox(false)}
                    </div>
                    <span className=" w-px h-5 bg-light_grey dark:bg-dark_grey mx-2.5"></span>
                    <div className="
                        flex
                        flex-row
                        items-center">
                        {/* {darkModeButton()} */}
                        <div className=" ml-5 ">
                            {loginSignupButton(false)}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div className="md:hidden flex flex-row px-10 py-5 bg-bodybg dark:bg-dark_grey shadow-md items-center justify-between relative">
            <a href="/" className="">
                <img className="w-5" src={require('./../../../assets/images/logos/icon-only.png')} alt="logo" />
            </a>
            {menuToggler()}

            {mobileMenuBox()}
        </div>
        </>
    );
}

export default Header;
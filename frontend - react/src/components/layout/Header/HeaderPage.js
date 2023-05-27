import React, { useState } from "react";
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

function HeaderPage(props) {
    const {title, sub_title, image} = props;
    
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
                            {loginSignupButton()}
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

export default HeaderPage;
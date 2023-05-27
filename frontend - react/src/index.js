import React from "react";
import './styles/main.css';

import ReactDOM from 'react-dom';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import Home from "./pages/Home";
import Login from "./pages/Login";
import Signup from "./pages/Signup";
import NotFound from "./pages/NotFound";
import Gallery from "./pages/Gallery";
import ViewGallery from "./pages/ViewGallery";
import GalleryDetails from "./pages/GalleryDetails";
import Recipe from "./pages/Recipe";
import Page from "./pages/Page";
import Category from "./pages/Category";
import Forgot from "./pages/Forgot";
import Wishlist from "./pages/Wishlist";
import Search from "./pages/Search";
import Pricing from "./pages/Pricing";
import { urls } from "./utils/Api_urls";
import Subscriptions from "./pages/Subscriptions";
import Payment from "./pages/Payment";
import News from "./pages/News";
import BCategory from "./pages/BCategory";
import BlogDetails from "./components/blog/details";
import Blog from "./pages/Blog";
import Profile from "./pages/Profile";
import Changepassword from "./pages/Changepassword";
import Searchai from "./pages/Searchai";




export default function App() {

    return (
        <div className="transition duration-500 bg-bodybg dark:bg-bodybgdark flex flex-col justify-center items-center">
            <div className="w-full max-w-[1300px]  self-center">
                <Router>
                    <Routes>
                        <Route exact path="/" element={<Home/>}/>
                        <Route exact path="/login" element={<Login/>}/>
                        <Route exact path="/forgot" element={<Forgot/>}/>
                        <Route exact path="/signup" element={<Signup/>}/>
                        <Route exact path="/pricing" element={<Pricing/>}/>
                        <Route exact path="/subscriptions" element={<Subscriptions />}/>
                        <Route exact path="/payment/:status/:method" element={<Payment />}/>
                        <Route exact path="/whishlist" element={<Wishlist />}/>
                        <Route exact path="/wishlist" element={<Wishlist />}/>
                        <Route exact path="/favorites" element={<Wishlist />}/>
                        <Route exact path="/search" element={<Search />}/>
                        <Route exact path="/searchai" element={<Searchai />}/>
                        <Route exact path="/change-password" element={<Changepassword />}/>
                        <Route exact path="/profile" element={<Profile />}/>
                        <Route exact path="/news" element={<News />}/>
                        <Route exact path="/search-recipe" element={<Search />}/>
                        <Route exact path="/recipe/:id" element={<Recipe />}/>
                        <Route exact path="/blog/:id" element={<Blog />}/>
                        <Route exact path="/page/:slug" element={<Page />}/>
                        <Route exact path="/category/:slug" element={<Category />}/>
                        <Route exact path="/bcategory/:slug" element={<BCategory />}/>
                        <Route path="*" element={<NotFound/>}/>
                    </Routes>
                </Router>
            </div>
        </div>
    );
}



ReactDOM.render(
    <App />,
    document.getElementById('root')
);
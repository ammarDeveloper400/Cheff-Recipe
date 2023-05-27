import React from "react";
import { AiOutlineInfo, AiOutlineInfoCircle } from "react-icons/ai";
import { useNavigate } from "react-router-dom";
import colors from "../../utils/colors";

function RecipeSearch(props) {

    const [search, setSearch] = React.useState(props?.default ? decodeURI(props?.default) : "");
    const [searchai, setSearchai] = React.useState(props?.ai ? decodeURI(props?.ai) : "");

    
    return (
        <div className="
            flex
            md:flex-row
            flex-col
            items-center
            justify-center
            
        ">
            <div className="
                flex md:flex-row flex-col justify-between items-center self-center md:w-1/3 w-11/12  md:mr-5
            ">
                <div className="w-full border-2 border-primary_color rounded-xl flex flex-row items-center">
                    <img
                    src={require('./../../assets/images/logos/icon-only.png')}
                    className=" w-10 h-10 mr-2 ml-2 "
                    />
                    <form className="w-full relative" onSubmit={(e)=>{
                        e.preventDefault();
                        window.location = (`/search?s=${search}`);
                    }}>
                    <input 
                    value={search}
                    type={"text"}
                    className="w-full text-dark_text dark:text-light_text text-xl p-5 rounded-xl border-transparent focus-visible:border-transparent focus-visible:ring-0"
                    placeholder="Search for recipes"
                    onChange={(e) => {
                        console.log(e.target.value);
                        setSearch(e.target.value);
                    }}
                    
                    />
                    <button className=" absolute right-3 top-1" style={{
                        right:"10px",
                        top:"20px",
                    }}>Search</button>
                    </form>
                </div>
            </div>
            <div className="
                flex md:flex-row flex-col justify-between items-center self-center md:w-1/3 w-11/12 md:mt-0 mt-3
            ">
                <div className="w-full border-2 border-primary_color rounded-xl flex flex-row items-center">
                    <img
                    src={require('./../../assets/images/logos/icon-only.png')}
                    className=" w-10 h-10 mr-2 ml-2 "
                    />
                    <form className="w-full relative" onSubmit={(e)=>{
                        e.preventDefault();
                        window.location = (`/searchai?s=${searchai}`);
                    }}>
                    <input 
                    value={searchai}
                    type={"text"}
                    className="w-full text-dark_text dark:text-light_text text-xl p-5 rounded-xl border-transparent focus-visible:border-transparent focus-visible:ring-0"
                    placeholder="Search Rover (AI Search)"
                    onChange={(e) => {
                        console.log(e.target.value);
                        setSearchai(e.target.value);
                    }}
                    
                    />
                    <button className=" absolute right-3 top-1" style={{
                        right:"10px",
                        top:"20px",
                    }}>Search</button>
                    </form>
                </div>
            </div>
            {/* <div className="
                flex md:flex-row flex-col justify-between items-center self-center w-11/12
            ">
                <span className="flex flex-row mt-2 items-center self-start italic"><AiOutlineInfoCircle color={colors.primary_color} style={{marginRight:5}} /> If recipe is not found in our database, we will automatically generate it for you using AI</span>
            </div> */}
        </div>
    );
}

export default RecipeSearch;
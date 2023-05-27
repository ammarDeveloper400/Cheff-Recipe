import React, { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import swal from "sweetalert";
import { api } from "../../utils/apiCalls";
import ReactMarkdown from "react-markdown";
import FormInput from "../form/forminput";
import { validateEmail } from "../../utils/functions";
import FormTextArea from "../form/formtextarea";

function PageDetails(props) {

    const [loading, setLoading] = useState(false);
    const navigate = useNavigate();
    const [email, setEmail] = useState("");
    const [name, setName] = useState("");
    const [msg, setMsg] = useState("");
    function createMarkup() {
        return {__html: `${props?.page?.attributes?.body}`};
    }

    const loginNow = async () => {
        if(loading) return;
        const payload = {data:{
            email:email,
            name,
            msg
        }}

        let valid = await validate(payload.data);


        if(valid){

            setLoading(true);

            const {isError, data} = await api('leads', payload, 'POST');
            setLoading(false);
            console.log(isError);
            if(isError) {
                // swal("Error", data[k], "error");
                swal("Error", data.error.message, "error");
            }else{
                swal("Success", "Message sent successfully!", "success");

                setEmail("");
                setName("");
                setMsg("");
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

        if(payload.name.length < 3){
            showInvalid("Name must be at least 3 characters long");
            return false;
        }

        if(payload.msg.length < 3){
            showInvalid("Message must be at least 10 characters long");
            return false;
        }

        return true;
    }

    

    const getLoginClasss = () => {

        let classes =  `
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
        <div className="
            flex
            flex-column
            justify-center
            items-center

            
        ">
            <div className="flex flex-col self-center w-full">
                <div
                
                className="
                    flex flex-col
                    w-full
                    justify-center
                    mb-5
                    p-5

                ">
                    <div className="
                        relative
                        w-full
                        h-96">
                        <img src={props?.page?.attributes?.header?.data[0]?.attributes?.url} alt="" className="
                            w-full
                            h-96
                            object-cover
                        "/>
                        <span className="absolute top-0 left-0 right-0 bottom-0 w-full h-96 flex flex-row items-center justify-center font-hr text-4xl">{props?.page.attributes.title}</span>
                    </div>
                    <span className="
                        font-mont
                        font-bold
                        text-2xl
                        mt-2
                    ">{props?.page.attributes.title}</span>

                    <div dangerouslySetInnerHTML={createMarkup()} className='ck-editor'></div>

                    {props?.page?.attributes?.slug=="contact-us" && <>
                    
                        <div className="mt-5 w-full flex flex-col justify-center items-center">
                            

                            <div className="flex flex-col justify-center items-center w-full">
                                <div className="md:w-4/6 w-11/12 flex lg:flex-row flex-col self-center max-w-5xl rounded-md overflow-hidden items-center justify-center">
                                    {/* <div className="lg:flex flex-row w-3/6 hidden items-center justify-center">
                                        <img alt="login" className="w-full" src={require('./../../assets/images/login-banner.png')} />
                                    </div>
                                    <div className="lg:hidden flex-row flex w-full items-center justify-center">
                                        <img alt="login" className="w-full" src={require('./../../assets/images/login-banner-phone.png')} />
                                    </div> */}
                                    <div className="flex flex-row lg:w-4/5 self-center pt-5 md:w-full sm:w-full items-center justify-center bg-light_grey dark:bg-dark_grey4  px-7 md:px-0">
                                        <div className="w-11/12 self-center flex flex-col">
                                            <div className="lg:mt-0 mt-5">
                                                <div className="font-montbold font-extrabold text-xl text-dark_text dark:text-light_text ">Get in touch</div>
                                                <div className="font-mont lg:mt-2 mt-1 text-base text-dark_grey3 dark:text-light_text ">Fill in your information to send us a message</div>
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
                                                placeholder="Enter name"
                                                label="Name"
                                                required={true}
                                                type="text"
                                                defaultValue={name}
                                                onChange={setName}
                                            />
                                            <div className="h-5"></div>

                                            <FormTextArea
                                                placeholder="Enter Message"
                                                label="Message"
                                                required={true}
                                                type="text"
                                                defaultValue={msg}
                                                onChange={setMsg}
                                            />
                                            

                                            <div className="h-6"></div>

                                            
                                            <div className="h-10"></div>
                                            <div
                                            onClick={loginNow}
                                            className={getLoginClasss()}>{loading?"Please wait...":"Submit"}</div>

                                            <div className="h-6"></div>

                                            
                                            <div className="h-12"></div>
                                            
                                            <div className="h-5"></div>


                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </>}
                    
                </div>
            </div>
            
        </div>
    );
}

export default PageDetails;
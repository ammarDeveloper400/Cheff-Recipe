import React, {  useState } from "react";
import ClosedEye from "../../assets/svg/ClosedEye";
import ClosedEyeDark from "../../assets/svg/ClosedEyeDark";
import ErrorMark from "../../assets/svg/ErrorMark";
import OpenEye from "../../assets/svg/OpenEye";
import OpenEyeDark from "../../assets/svg/OpenEyeDark";
let ref = null;
let validate = false;

function FormTextArea(props) {

    const {required, type, placeholder, label, error, defaultValue, onChange=()=>{}} = props;


    const [passwordShown, showPassword] = useState(false);
    const [value, setValue] = useState(defaultValue ?? "");


    const handleChange = (e) => {

        setValue(e);
        onChange(e);
    }
    const getError =()=>{

        

        
        let hasErrorPre = false;
        let errorMsgPre = error ?? "Invalid "+label;

        if(!validate || value.length === 0){
            return {hasError:hasErrorPre, error:errorMsgPre};
        }
        if(error && error?.length>0){

            hasErrorPre = true;
        }



        if(!hasErrorPre && ref!=null){
            
            if(!ref.validity.valid){
                hasErrorPre = true;
                errorMsgPre = "Invalid "+label;
            }
        }

        let x = {hasError:false, error:errorMsgPre}
        return x
    }
    
    return (

        <>
            <div className="flex flex-col w-full">
                {label!=="" && <span
                    className="text-dark_text dark:text-light_text text-xs font-montsemibold font-semibold"
                >{label}</span>}

                <div className="relative mt-2.5">
                    <textarea
                    ref={(r)=>{
                        ref = r;
                    }}
                    cols={10}
                    className={"w-full px-4 py-3.5 text-sm text-dark_text dark:text-light_text border-b border-light_grey2 dark:border-dark_grey focus:outline-2 focus:outline-dark_text dark:focus:outline-light_text placeholder-light_placeholder dark:placeholder-dark_placeholder dark:bg-dark_grey autofill:dark:bg-dark_grey autofill:shadow-black" + (getError().hasError ? " outline-error_color focus:outline-error_color dark:focus:outline-error_color " : "")}
                    value={value}
                    onChange={(e)=>{
                        e.preventDefault()
                        handleChange(e.target.value);
                    }}
                    required={required}
                    type={passwordShown ?"text":type}
                    placeholder={placeholder}
                    
                    onBlur={(e)=>{
                        e.preventDefault()
                        validate = true;
                    }}
                    // onSubmit={(e)=>{
                    //     e.preventDefault()
                    //     validate = true;
                    // }}
                    />
                    
                    <div className="absolute top-0 bottom-0 right-0 mr-2.5 flex flex-row items-center">
                        {
                            getError().hasError &&
                            <div className={type==="password" ? "mr-2.5": ""}><ErrorMark /></div>
                        }
                        {
                            type==="password" &&
                            <div
                            className="cursor-pointer"
                            onClick={()=>{showPassword(!passwordShown)}}
                            >
                                {passwordShown ?
                                    <>
                                    <span className="dark:hidden"><OpenEye  /></span>
                                    <span className="hidden dark:block"><OpenEyeDark  /></span>
                                    </>
                                    :<>
                                    <span className="dark:hidden"><ClosedEye  /></span>
                                    <span className="hidden dark:block"><ClosedEyeDark  /></span>
                                    </>
                                }
                            </div>
                        }
                        
                    </div>

                </div>
                {getError().hasError && <span className="font-mont text-xs text-error_color font-semibold mt-1">{getError().error}</span>}
            </div>
        </>
    )
}
export default FormTextArea;
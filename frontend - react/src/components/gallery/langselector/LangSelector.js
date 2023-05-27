import React, { useState } from "react";
import DropIcon2 from "../../../assets/svg/DopIcon2";
import DropIcon2Dark from "../../../assets/svg/DopIcon2Dark";
import TranslationIcon from "../../../assets/svg/TranslationIcon";
import TranslationIconDark from "../../../assets/svg/TranslationIconDark";


const langss = [
    {
        name: "English",
        code: "en",
        selected: true
    },
    {
        name: "French",
        code: "fr",
        selected: false
    },
    {
        name: "Swahili",
        code: "de",
        selected: false
    },
    {
        name: "Spanish",
        code: "fr",
        selected: false
    }
]


function LangSelector(props) {
    const {onLangChange} = props ?? {onLangChange: () => {}};

    const [langs, setLangs] = React.useState(langss);

    const [translationModal, setTranslationModal] = useState(false)

    



    const _translationModal = ()=>{

        if(translationModal){
            return (
                <div className="absolute top-0 right-0  z-40 flex flex-col justify-between items-center py-1 bg-light_grey3 dark:bg-bodybgdark">
                    {langs.map((i,k)=>{
                        return (

                            <div onClick={()=>{
                                setTranslationModal(false);
                                setLangs(i);
                                onLangChange(i.name);
                                
                            }} key={`l-${k}`} className=" w-full flex items-center justify-center py-1 px-3 cursor-pointer hover:bg-dark_grey2 ">
                                <div key={`l2-${k}`} className=" text-primary_color2">{i.name}</div>
                            </div>

                        )
                    })}
                </div>
            )
        }
    }


    return (

        <div className="relative">
            <div className=" flex flex-row justify-between items-center p-1 bg-light_grey3 dark:bg-bodybgdark mr-2 rounded-sm cursor-pointer" onClick={()=>{
                setTranslationModal(!translationModal)
            }}>
                <>
                    <span className="dark:hidden"><TranslationIcon /></span>
                    <span className="hidden dark:block"><TranslationIconDark /></span>
                </>
                <div className="flex justify-center items-center ml-2">
                    <>
                        <span className="dark:hidden"><DropIcon2 /></span>
                        <span className="hidden dark:block"><DropIcon2Dark /></span>
                    </>
                </div>
            </div>
            {_translationModal()}
        </div>
    )
}
export default LangSelector;
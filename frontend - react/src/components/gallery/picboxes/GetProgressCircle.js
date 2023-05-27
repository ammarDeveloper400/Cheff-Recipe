import React from 'react';
import { CircularProgressbar, buildStyles } from 'react-circular-progressbar';
import colors from '../../../utils/colors';

const GetProgressCircle = ({p}) =>{

    if(p===0) return <></>

    return <div className={"h-4 w-4"}>
        <CircularProgressbar strokeWidth={20} styles={buildStyles({
            strokeLinecap: 'butt',
            pathColor:colors.primary_color,
        })} value={p} text={``} />
    </div>
}

export default GetProgressCircle;
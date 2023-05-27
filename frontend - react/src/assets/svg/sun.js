import * as React from "react"

function SunIcon(props) {
    return (
        <svg
            width={props?.width ?? 20}
            height={props?.height ?? 20}
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            {...props}
        >
            <circle
                r={2.68889}
                transform="matrix(-1 0 0 1 10 10)"
                fill={props?.fill ?? "#8C9299"}
                stroke={props?.stroke ?? "#D5D9DD"}
                fillOpacity={0.25}
                strokeWidth={1.28889}
            />
            <path
                d="M10 4.167V2.5M10 17.5v-1.666M5.875 5.875L4.697 4.697M15.303 15.303l-1.179-1.178M4.167 10H2.5M17.5 10h-1.666M5.875 14.125l-1.178 1.178M15.303 4.696l-1.179 1.179"
                stroke={props?.stroke ?? "#D5D9DD"}
                strokeWidth={1.28889}
                strokeLinecap="round"
            />
        </svg>
    )
}

export default SunIcon

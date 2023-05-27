import * as React from "react"

function MoonIcon(props) {
    return (
        <svg
            width={20}
            height={20}
            viewBox="0 0 20 20"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            {...props}
        >
            <path
                d="M9.688 4.175A5.833 5.833 0 116.98 14.99 5.834 5.834 0 009.687 4.175z"
                fill={props?.fill ?? "#F9BB11"}
            />
            <path
                d="M5.611 10.441c.057.12.101.251.189.515.109.326.163.49.218.56a.537.537 0 00.853 0c.054-.07.109-.234.218-.56.088-.264.131-.396.188-.515.212-.445.57-.803 1.016-1.015.119-.057.25-.101.514-.189.327-.109.49-.163.561-.218a.537.537 0 000-.853c-.07-.055-.234-.109-.56-.218a4.687 4.687 0 01-.515-.188 2.148 2.148 0 01-1.016-1.016c-.057-.12-.1-.25-.188-.514-.11-.327-.164-.49-.218-.562a.537.537 0 00-.853 0c-.055.072-.11.235-.218.562a4.688 4.688 0 01-.189.514c-.212.445-.57.804-1.015 1.016-.12.056-.251.1-.515.188-.326.11-.49.163-.56.218a.537.537 0 000 .853c.07.055.234.11.56.218.264.088.396.132.515.189.445.212.803.57 1.015 1.015z"
                fill={props?.fill ?? "#F9BB11"}
            />
        </svg>
    )
}

export default MoonIcon

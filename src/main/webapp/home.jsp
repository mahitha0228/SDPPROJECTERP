<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
    <meta charset="UTF-8"> 
    <title>Home</title> 
    <style> 
        /* Apply background image to the body */

        h2 { 
            text-align: center; 
            color: #4CAF50; 
            margin-bottom: 20px; 
        } 

        ol { 
            max-width: 600px; 
            margin: 0 auto; 
            background-color: rgba(255, 255, 255, 0.8); /* Slight transparency for readability */
            padding: 20px; 
            border-radius: 8px; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
            list-style-type: decimal; 
        } 

        ol li { 
            margin: 15px 0; 
            font-size: 18px; 
        } 

        li::marker { 
            color: #4CAF50; 
            font-weight: bold; 
        } 

        /* Navbar styling (if needed) */ 
        .navbar { 
            display: flex; 
            justify-content: center; 
            background-color: #333; 
            padding: 10px; 
        } 

        .navbar a { 
            color: white; 
            padding: 14px 20px; 
            text-decoration: none; 
            text-align: center; 
        } 

        .navbar a:hover { 
            background-color: #4CAF50; 
            color: white; 
        } 
    </style> 
</head>

<body>
<%@ include file="mainnavbar.jsp" %>


</body>
</html>

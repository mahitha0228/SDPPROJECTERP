<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Admin Home</title> 
    <style> 
        /* General Reset */ 
        * { 
            margin: 0; 
            padding: 0; 
            box-sizing: border-box; 
            font-family: 'Arial', sans-serif; /* Professional font */ 
        } 
 
        body { 
            background-color: #f4f4f4; /* Light background for contrast */ 
            color: #333; /* Darker text for better readability */ 
            line-height: 1.6; 
            font-size: 16px; 
            padding: 20px; 
        } 
 
        h1 { 
            text-align: center; /* Center align the header */ 
            color: #007bff; /* Bright blue color for the heading */ 
            margin-bottom: 20px; 
        } 
 
        .container { 
            max-width: 800px; /* Limit the width of the content */ 
            margin: 0 auto; /* Center the container */ 
            background: #ffffff; /* White background for content area */ 
            padding: 30px; /* Padding around the content */ 
            border-radius: 8px; /* Rounded corners */ 
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Soft shadow effect */ 
            text-align: center; /* Center all text in the container */ 
        } 
 
        .total-students { 
            font-size: 24px; /* Larger font size for important info */ 
            font-weight: bold; /* Bold text for emphasis */ 
            color: #28a745; /* Green color for the student count */ 
            margin-top: 20px; /* Space above the text */ 
        } 
 
        footer { 
            text-align: center; 
            padding: 10px; 
            background-color: #333; /* Dark background for footer */ 
            color: white; 
            position: relative; 
            width: 100%; 
            font-size: 14px; 
            margin-top: 20px; 
        } 
    </style> 
</head> 
<head>
    <link rel="stylesheet" href="/css/style.css">
</head>

<body> 
    <%@include file="adminnavbar.jsp" %> 
     
    <div class="container"> 
        <h1>Admin Home</h1> 
        <div class="total-students"> 
            Total Students: <c:out value="${count}"></c:out> 
        </div> 
    </div> 
 
    
</body> 
</html>

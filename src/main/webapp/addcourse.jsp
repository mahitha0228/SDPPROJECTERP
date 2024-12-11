<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Registration</title>
    <style> 
        /* General Reset */ 
        * { 
            margin: 0; 
            padding: 0; 
            box-sizing: border-box; 
            font-family: 'Roboto', sans-serif; /* Professional font */ 
        } 

        body { 
            background-color: #f8f9fa; /* Light background for contrast */ 
            color: #343a40; /* Darker text for better readability */ 
            line-height: 1.6; 
            font-size: 16px; 
            padding: 20px; 
        } 

        h3 { 
            text-align: center; 
            color: #007bff; /* Bright color for the heading */ 
            text-decoration: underline; 
            margin-bottom: 20px; 
        } 

        .form-container { 
            background: #ffffff; /* White background for form */ 
            width: 50%; 
            margin: 0 auto; /* Centering the form */ 
            padding: 30px; 
            border-radius: 8px; 
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Softer shadow */ 
        } 

        table { 
            width: 100%; 
            border-spacing: 10px; /* Space between table cells */ 
        } 

        td { 
            font-size: 16px; 
            color: #343a40; /* Consistent color */ 
        } 

        label { 
            font-weight: bold; /* Bold labels for clarity */ 
        } 

        input[type="text"],  
        input[type="number"],  
        textarea { 
            width: 100%; 
            padding: 12px; 
            border: 1px solid #ced4da; /* Light border for inputs */ 
            border-radius: 4px; 
            margin: 8px 0; 
            font-size: 16px; 
            transition: border-color 0.3s; 
        } 

        input[type="text"]:focus,  
        input[type="number"]:focus,  
        textarea:focus { 
            border-color: #007bff; /* Blue border on focus */ 
            outline: none; 
        } 

        input[type="submit"], 
        input[type="reset"] { 
            background-color: #007bff; /* Primary color for buttons */ 
            color: white; 
            padding: 12px 20px; 
            border: none; 
            border-radius: 4px; 
            font-size: 16px; 
            cursor: pointer; 
            margin-top: 10px; 
            transition: background-color 0.3s; 
            width: 48%; /* Adjusted width for buttons */ 
        } 

        input[type="submit"]:hover { 
            background-color: #0056b3; /* Darker blue on hover */ 
        } 

        input[type="reset"]:hover { 
            background-color: #ffc107; /* Yellow for reset button on hover */ 
        } 

        .button-container { 
            display: flex; /* Flexbox for button alignment */ 
            justify-content: space-between; /* Space between buttons */ 
            margin-top: 20px; 
        } 
    </style> 
</head>
<body>
<%@include file ="adminnavbar.jsp" %>
<h3 align="center">Course Registration</h3>
<div class="form-container">
    <form method="POST" action="insertcourse">
        <table>
            <tr>
                <td><label>Course Name</label></td>
                <td><input type="text" name="Coursename" placeholder="Enter Course Name" required /></td>
            </tr>
            <tr>
                <td><label>Course Code</label></td>
                <td><input type="text" name="Coursecode" placeholder="Enter Course Code" required /></td>
            </tr>
            <tr>
                <td><label>LTP Structure</label></td>
                <td><input type="text" name="ltps" placeholder="e.g., 3-1-2-0" required /></td>
            </tr>
            <tr>
                <td><label>Credits</label></td>
                <td><input type="number" name="credits" placeholder="Enter Credits" required /></td>
            </tr>
            <tr>
                <td colspan="2" class="button-container">
                    <input type="submit" value="Register" />
                    <input type="reset" value="Clear" />
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

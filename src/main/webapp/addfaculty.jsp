<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Registration</title>
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
        input[type="email"],  
        input[type="password"],  
        input[type="number"],  
        select,  
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
        input[type="email"]:focus, 
        input[type="password"]:focus, 
        input[type="number"]:focus, 
        select:focus, 
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
</head>
<head>
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>
<%@include file ="adminnavbar.jsp" %>
<h3 align="center">Faculty Registration</h3>
<div class="form-container">
    <form method="POST" action="insertfaculty">
        <table>
            <tr>
                <td><label>Enter Name</label></td>
                <td><input type="text" name="fname" class="form-check-input" required /></td>
            </tr>
            <tr>
                <td><label>Select Gender</label></td>
                <td>
                    <input type="radio" name="fgender" class="form-check-input" value="Male" required />Male
                    <input type="radio" name="fgender" class="form-check-input" value="Female" required />Female
                    <input type="radio" name="fgender" class="form-check-input" value="Others" required />Others
                </td>
            </tr>
            <tr>
                <td><label>Select Date of Birth</label></td>
                <td><input type="date" name="fdateofbirth" required /></td>
            </tr>
            <tr>
                <td><label>Enter Email ID</label></td>
                <td><input type="email" name="femail" class="form-control" required /></td>
            </tr>
            <tr>
                <td><label>Enter Password</label></td>
                <td><input type="password" name="fpwd" class="form-control" required /></td>
            </tr>
            <tr>
                <td><label>Enter Department</label></td>
                <td><input type="text" name="fdepartment" class="form-control" required /></td>
            </tr>
            <tr>
                <td><label>Enter Location</label></td>
                <td><input type="text" name="flocation" class="form-control" required /></td>
            </tr>
            <tr>
                <td><label>Enter Contact</label></td>
                <td><input type="number" name="fcontact" class="form-control" required /></td>
            </tr>
            <tr>
                <td><label>Enter Status</label></td>
                <td><input type="text" name="fstatus" class="form-control" required /></td>
            </tr>
            <tr>
                <td colspan="2" class="button-container">
                    <input type="submit" value="Register" class="btn btn-success" />
                    <input type="reset" value="Clear" class="btn btn-success" />
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

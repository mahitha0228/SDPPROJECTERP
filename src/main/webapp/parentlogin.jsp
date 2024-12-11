<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Faculty Login</title> 
    <style> 
        /* General Reset */ 
        * { 
            margin: 0; 
            padding: 0; 
            box-sizing: border-box; 
            font-family: 'Arial', sans-serif; /* Clean font for the entire page */ 
        } 
 
        body { 
            background-color: #f4f4f4; /* Light grey background for the body */ 
            color: #333; /* Dark text for readability */ 
            padding: 20px; /* Padding around the body */ 
            text-align: center; /* Center text for a welcoming feel */ 
        } 
 
        h4 { 
            color: red; /* Red color for error messages */ 
            margin-bottom: 20px; /* Space below the error message */ 
        } 
 
        h3 { 
            text-align: center; /* Center text for the heading */ 
            margin-bottom: 20px; /* Space below the heading */ 
            color: #007bff; /* Blue color for the main heading */ 
        } 
 
        .form-container { 
            background-color: #fff; /* White background for the form */ 
            border-radius: 8px; /* Rounded corners for the form container */ 
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */ 
            max-width: 400px; /* Max width for the form */ 
            margin: 0 auto; /* Center the form on the page */ 
            padding: 20px; /* Padding inside the form */ 
        } 
 
        table { 
            width: 100%; /* Full width for the table */ 
            margin-top: 10px; /* Space above the table */ 
        } 
 
        td { 
            padding: 10px; /* Padding for table cells */ 
        } 
 
        .button-container { 
            margin-top: 20px; /* Space above the button container */ 
        } 
 
        input[type="submit"], input[type="reset"] { 
            background-color: #007bff; /* Blue background for buttons */ 
            color: white; /* White text for buttons */ 
            border: none; /* Remove border */ 
            border-radius: 4px; /* Rounded corners for buttons */ 
            padding: 10px 15px; /* Padding for buttons */ 
            cursor: pointer; /* Change cursor on hover */ 
            font-size: 16px; /* Larger font size for buttons */ 
            transition: background-color 0.3s; /* Transition for hover effect */ 
        } 
 
        input[type="submit"]:hover, input[type="reset"]:hover { 
            background-color: #0056b3; /* Darker blue on hover */ 
        } 
 
        input[type="email"], input[type="password"] { 
            width: 100%; /* Full width for input fields */ 
            padding: 10px; /* Padding for input fields */ 
            border: 1px solid #ccc; /* Light border for input fields */ 
            border-radius: 4px; /* Rounded corners for input fields */ 
            font-size: 16px; /* Larger font size for input fields */ 
        } 
    </style> 
</head> 
<body> 
    <%@include file="mainnavbar.jsp" %> 
 
    <h4> 
        <c:out value="${message}"></c:out> 
    </h4> 
     
    <h3><u>Parent Login</u></h3> 
     
    <div class="form-container"> 
        <form method="POST" action="checkparentlogin"> 
            <table> 
                <tr> 
                    <td><label for="pemail">Enter Email ID</label></td> 
                    <td><input type="email" id="pemail" name="pname" required/></td> 
                </tr> 
                <tr> 
                    <td><label for="ppwd">Enter Password</label></td> 
                    <td><input type="password" id="ppwd" name="ppwd" required/></td> 
                </tr> 
                <tr> 
                    <td colspan="2" class="button-container"> 
                        <input type="submit" value="Login"/> 
                        <input type="reset" value="Clear"/> 
                    </td> 
                </tr> 
            </table> 
        </form> 
    </div> 
</body> 
</html>
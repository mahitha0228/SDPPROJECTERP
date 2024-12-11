<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Student Login</title> 
    <style>
       /* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f5f5f5;
    color: #333;
    margin: 0;
    padding: 0;
}

/* Heading Styling */
h3 {
    text-align: center;
    color: #007bff; /* Blue color for the heading */
    text-decoration: underline;
    margin-top: 20px;
    font-size: 24px;
}

h4 {
    text-align: center;
    color: #ff6f61; /* Red for error or message */
    margin: 10px 0;
}

/* Form Container */
.form-container {
    background: #ffffff;
    width: 100%;
    max-width: 400px; /* Restrict max width */
    margin: 30px auto; /* Center align */
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    border: 1px solid #ddd; /* Light border */
}

/* Label Styling */
label {
    display: block;
    font-weight: bold;
    margin: 10px 0 5px; /* Space above and below labels */
    color: #333;
}

/* Input Fields */
input[type="email"], input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
    margin-bottom: 15px; /* Space below each input */
    transition: border-color 0.3s;
}

input[type="email"]:focus, input[type="password"]:focus {
    border-color: #007bff; /* Blue outline on focus */
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

/* Buttons */
input[type="submit"], input[type="reset"] {
    background-color: #007bff; /* Blue */
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    font-size: 14px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin: 5px;
}

input[type="submit"]:hover {
    background-color: #0056b3; /* Darker blue */
}

input[type="reset"]:hover {
    background-color: #dc3545; /* Red for reset button */
}

/* Button Container */
.button-container {
    text-align: center;
    margin-top: 10px;
}

/* Responsive Design */
@media (max-width: 480px) {
    .form-container {
        width: 90%; /* Adjust form width for smaller screens */
        padding: 15px;
    }

    h3 {
        font-size: 20px; /* Adjust heading size */
    }
}

    </style>
</head> 
<body> 
    <%@include file="mainnavbar.jsp" %>

    <h4>
        <c:out value="${message}"></c:out>
    </h4>

    <div class="form-container">
        <h3>Student Login</h3>
        <form method="POST" action="checkstudentlogin">
            <label for="semail">Enter Email ID</label>
            <input type="email" id="semail" name="sname" required />

            <label for="spwd">Enter Password</label>
            <input type="password" id="spwd" name="spwd" required />

            <div class="button-container">
                <input type="submit" value="Login" />
                <input type="reset" value="Clear" />
            </div>
        </form>
    </div>

</body> 
</html>

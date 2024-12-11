<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Student Login Fail</title> 
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
            color: #333; /* Dark text for readability */ 
            line-height: 1.6; 
            font-size: 16px; 
            padding: 20px; 
            display: flex; /* Flexbox for centering */ 
            justify-content: center; /* Center horizontally */ 
            align-items: center; /* Center vertically */ 
            height: 100vh; /* Full viewport height */ 
        } 
 
        .error-container { 
            max-width: 400px; /* Limit the width of the container */ 
            background: #ffffff; /* White background for the message box */ 
            padding: 30px; /* Padding around the message */ 
            border-radius: 8px; /* Rounded corners */ 
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Soft shadow effect */ 
            text-align: center; /* Center text */ 
        } 
 
        .error-container h3 { 
            color: #dc3545; /* Red color for the error heading */ 
            margin-bottom: 20px; /* Space below the heading */ 
        } 
 
        .error-container p { 
            font-size: 18px; /* Font size for the message */ 
            margin-bottom: 20px; /* Space below the message */ 
        } 
 
        .error-container a { 
            text-decoration: none; /* Remove underline */ 
            color: #007bff; /* Blue color for the link */ 
            font-weight: bold; /* Bold text for emphasis */ 
            transition: color 0.3s ease; /* Smooth transition for hover effect */ 
        } 
 
        .error-container a:hover { 
            color: #0056b3; /* Darker blue on hover */ 
        } 
    </style> 
</head> 

<body> 
    <div class="error-container"> 
        <h3>Your Username and Password are incorrect. Please try again.</h3> 
        <p><c:out value="${message}"></c:out></p> 
        <a href="studentlogin">Try Again</a> 
    </div> 
</body> 
</html>

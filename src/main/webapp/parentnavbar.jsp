<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>ERP Project</title>

    <style>
        /* General reset */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Header Styles */
        h2 {
            color: #007bff; /* Blue heading */
            text-align: center;
            margin-top: 30px;
            font-size: 36px;
        }

        /* Navigation Bar Styles */
        div.navbar {
            background-color: #333; /* Dark background for navbar */
            padding: 10px;
            text-align: center;
            font-size: 18px;
        }

        div.navbar a {
            color: white;
            text-decoration: none;
            margin: 0 20px;
            font-weight: bold;
        }

        div.navbar a:hover {
            color: #ffcc00; /* Gold color on hover */
        }

        /* Responsive Design for Mobile Devices */
        @media (max-width: 768px) {
            div.navbar {
                font-size: 16px;
                padding: 10px 0;
            }
            
            div.navbar a {
                margin: 0 10px;
                font-size: 16px;
            }

            h2 {
                font-size: 28px;
            }
        }

    </style>

</head>
<body>

    <h2>ERP Project</h2>

    <div class="navbar">
        <a href="parenthome">Home</a>
        <a href="parentprofile">Parent Profile</a>
        <a href="parentlogin">Logout</a>
    </div>

</body>
</html>

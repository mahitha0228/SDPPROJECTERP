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
            padding: 20px;
            width: 200px;  /* Set the width of the vertical navbar */
            position: fixed;  /* Make it fixed on the left side */
            top: 0;
            left: 0;
            height: 100%;  /* Full height */
            text-align: left;
            font-size: 18px;
            display: flex;
            flex-direction: column;
            gap: 10px;  /* Space between links */
        }

        div.navbar a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            font-weight: bold;
            border-radius: 4px;
            display: block;
        }

        div.navbar a:hover {
            background-color: #ffcc00; /* Gold color on hover */
            color: black; /* Change text color to black on hover */
        }

        /* Main content */
        .content {
            margin-left: 220px;  /* Create space for the vertical navbar */
            padding: 20px;
        }

        /* Responsive Design for Mobile Devices */
        @media (max-width: 768px) {
            div.navbar {
                width: 100%; /* Make navbar full width */
                height: auto;
                flex-direction: row;  /* Make the navbar horizontal on smaller screens */
            }

            div.navbar a {
                margin: 10px;
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
        <a href="facultyhome">Home</a>
        <a href="facultyprofile">Faculty Profile</a>
        <a href="FGrade">Grade</a>
        <a href="Certification">Certifications</a>
        <a href="viewallcertifications">ViewAllCertifications</a>
        <a href="Attendence">Attendance</a>
        <a href="Feedback">Feedback</a>
        <a href="facultylogin">Logout</a>
    </div>

</body>
</html>

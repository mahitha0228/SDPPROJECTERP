<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Admin Home</title>

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
        .navbar {
            background-color: #333; /* Dark background for navbar */
            margin-bottom: 0;
            position: fixed;  /* Keep the navbar fixed on the left */
            top: 0;
            left: 0;
            width: 200px;  /* Set the width of the vertical navbar */
            height: 100%;  /* Full height */
            overflow-y: auto;  /* Enable vertical scrolling */
            padding: 10px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            font-weight: bold;
            border-radius: 4px;
            display: block;
            margin: 5px 0;
        }

        .navbar a:hover {
            background-color: #ffcc00; /* Gold color on hover */
            color: black; /* Change text color to black on hover */
        }

        /* Main content */
        .content {
            margin-left: 220px; /* Create space for the vertical navbar */
            padding: 20px;
        }

        /* Responsive Design for Mobile Devices */
        @media (max-width: 768px) {
            .navbar {
                width: 100%;  /* Make navbar full width on smaller screens */
                height: auto; /* Adjust height to content */
                position: relative;  /* Let the navbar scroll with the page */
            }

            .navbar a {
                padding: 10px;
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
        <a href="adminhome">Home</a>
        <a href="viewallstudents">View All Students</a>
        <a href="AddStudent">Add Student</a>
        <a href="addfaculty">Add Faculty</a>
        <a href="updatestudent">Update Student</a>
        <a href="deletestudent">Delete Student</a>
        <a href="viewallfaculty">View All Faculty</a>
        <a href="deletefaculty">Delete Faculty</a>
        <a href="addcourse">Course Registration</a>
        <a href="viewallcourse">View All Courses</a>
        <a href="adminlogin">Logout</a>
    </div>

    <div class="content">
        <!-- Content for Admin -->
    </div>

</body>
</html>

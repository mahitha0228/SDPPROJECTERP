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

        /* Vertical Navigation Bar Styles */
        .navbar {
            background-color: #333; /* Dark background for navbar */
            width: 200px; /* Fixed width for the navbar */
            height: 100vh; /* Full height of the viewport */
            position: fixed; /* Fixed to the left side */
            top: 0;
            left: 0;
            display: flex;
            flex-direction: column; /* Arrange links in a column */
            align-items: flex-start; /* Align links to the left */
            padding: 20px 10px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            margin: 5px 0;
            width: 100%; /* Full width of the navbar */
            text-align: left; /* Align text to the left */
            font-weight: bold;
            border-radius: 4px;
        }

        .navbar a:hover {
            background-color: #007bff; /* Blue background on hover */
            color: white; /* White text on hover */
        }

        /* Main Content */
        .content {
            margin-left: 220px; /* Add space for the vertical navbar */
            padding: 20px;
        }

        /* Responsive Design for Mobile Devices */
        @media (max-width: 768px) {
            .navbar {
                width: 100%; /* Full width on smaller screens */
                height: auto; /* Auto height for the navbar */
                position: relative; /* Make it relative for stacking */
            }

            .content {
                margin-left: 0; /* Remove margin for content */
            }
        }
    </style>

</head>
<body>

    <h2>ERP Project</h2>

    <div class="navbar">
        <a href="studenthome">Home</a>
        <a href="studentprofile">Student Profile</a>
        <a href="Exams">Exams</a>
        <a href="SGrade">Student Grade</a>
        <a href="Timetable">TimeTable</a>
        <a href="studentlogin">Logout</a>
    </div>

</body>
</html>

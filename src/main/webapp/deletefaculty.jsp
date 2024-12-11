<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Delete Faculty</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f4f6f9; /* Light background */
            color: #333; /* Standard text color */
            font-size: 16px;
            padding: 20px;
            display: flex;
            justify-content: center; /* Center the content horizontally */
            align-items: center; /* Center the content vertically */
            height: 100vh; /* Full viewport height */
        }

        .container {
            width: 80%; /* Control the width of the container */
            max-width: 900px; /* Set a max-width */
            background-color: #ffffff; /* White background for the main content */
            padding: 30px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
        }

        h2 {
            text-align: center;
            color: #4CAF50; /* Green for the heading */
            margin-bottom: 20px;
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse; /* No space between table cells */
            margin: 20px 0;
            background-color: #fff; /* White table background */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        table th, table td {
            padding: 8px 12px; /* Padding around the cells */
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background-color: #4CAF50; /* Green header */
            color: white;
            text-transform: uppercase;
            font-size: 14px;
        }

        table tr:hover {
            background-color: #f9f9f9; /* Light hover effect */
        }

        table td {
            font-size: 14px;
            color: #555;
        }

        /* Button Styling */
        button {
            background-color: #f44336; /* Red for delete action */
            color: white;
            border: none;
            padding: 8px 12px; /* Reduced padding */
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #d32f2f; /* Darker red on hover */
            transform: scale(1.05); /* Slightly enlarge button on hover */
        }

        /* Message Style */
        p {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #4CAF50; /* Green for success messages */
        }
    </style>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <h2>Delete Faculty</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${facultylist}" var="faculty">
                    <tr>
                        <td>${faculty.id}</td>
                        <td>${faculty.name}</td>
                        <td>${faculty.email}</td>
                        <td>${faculty.department}</td>
                        <td>
                            <form action="deletefaculty" method="POST">
                                <input type="hidden" name="facultyId" value="${faculty.id}" />
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <p>${message}</p>
    </div>
</body>
</html>

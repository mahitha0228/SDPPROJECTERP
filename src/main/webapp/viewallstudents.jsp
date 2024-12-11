<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="jakarta.tags.core" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f0f0f0; /* Light gray background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full height */
            flex-direction: column;
            margin: 0;
            padding: 20px;
        }

        .container {
            width: 90%;
            max-width: 1000px; /* Limit max width */
            margin-top: 20px;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Softer shadow */
            border-radius: 8px; /* Rounded corners */
        }

        h3 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .total-count {
            text-align: center;
            font-size: 18px;
            color: #28a745; /* Green color for the count */
            margin-bottom: 20px;
        }

        table {
            width: 100%; /* Full width */
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #28a745; /* Green background for table heading */
            color: white;
            font-weight: bold;
            text-transform: uppercase;
        }

        td {
            background-color: #fafafa;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light color for alternating rows */
        }

        tr:hover {
            background-color: #f1f1f1; /* Hover effect for rows */
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        a:hover {
            color: #0056b3;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .container {
                width: 100%;
                padding: 10px;
            }

            table, th, td {
                font-size: 14px;
            }
        }

    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <h2>View All Students</h2>
        <p>Total Students: ${count}</p>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                    <th>Location</th>
                    <th>Contact</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="student" items="${studentlist}">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.email}</td>
                        <td>${student.gender}</td>
                        <td>${student.dateofbirth}</td>
                        <td>${student.location}</td>
                        <td>${student.contact}</td>
                        <td>
                            <a href="/updatestudent/${student.id}">Update</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>

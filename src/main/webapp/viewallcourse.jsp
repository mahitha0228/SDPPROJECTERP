<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Courses</title>
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
    <%@ include file="adminnavbar.jsp" %><br/>

    <div class="container">
        <h3>View All Courses</h3>

        <div class="total-count">
            <p>Total Courses: ${courselist.size()}</p>
        </div>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>COURSECODE</th>
                    <th>COURSENAME</th>
                    <th>L-T-P-S</th>
                    <th>Credits</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${courselist}" var="course">
                    <tr>
                        <td><c:out value="${course.coursecode}"></c:out></td>
                        <td><c:out value="${course.coursename}"></c:out></td>
                        <td><c:out value="${course.ltps}"></c:out></td>
                        <td><c:out value="${course.credits}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>

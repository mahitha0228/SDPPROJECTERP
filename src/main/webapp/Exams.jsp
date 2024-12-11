<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Exams</title>
    <style>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
<%@include file="studentnavbar.jsp" %>
<h3 align="center">Exams for Student</h3>
<div class="exam-container">
    <table>
        <thead>
            <tr>
                <th>Exam Name</th>
                <th>Date</th>
                <th>Duration (Minutes)</th>
                <th>Total Marks</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="exam" items="${exams}">
                <tr>
                    <td>${exam.examName}</td>
                    <td>${exam.date}</td>
                    <td>${exam.duration}</td>
                    <td>${exam.totalMarks}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

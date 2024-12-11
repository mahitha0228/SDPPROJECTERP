<%@ page import="com.klef.jfsd.springboot.model.Faculty" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    Faculty f = (Faculty) session.getAttribute("faculty");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Profile</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <%@ include file="facultynavbar.jsp" %> <!-- Include faculty navbar -->
    <div class="profile-container">
        <h3 align="center">My Profile</h3>
        <div class="profile-item"><label>ID:</label> <%= f.getId() %></div>
        <div class="profile-item"><label>Name:</label> <%= f.getName() %></div>
        <div class="profile-item"><label>Gender:</label> <%= f.getGender() %></div>
        <div class="profile-item"><label>DOB:</label> <%= f.getDateofbirth() %></div>
        <div class="profile-item"><label>Email:</label> <%= f.getEmail() %></div>
        <div class="profile-item"><label>Department:</label> <%= f.getDepartment() %></div>
        <div class="profile-item"><label>Location:</label> <%= f.getLocation() %></div>
        <div class="profile-item"><label>Contact:</label> <%= f.getContact() %></div>
    </div>
</body>
</html>

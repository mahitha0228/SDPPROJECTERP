<%@page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Student s =(Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%@include file="studentnavbar.jsp" %>
<div class="profile-container">
  <h3 align="center">My Profile</h3>
  <div class="profile-item"><label>ID:</label> <%=s.getId() %></div>
  <div class="profile-item"><label>Name:</label> <%=s.getName() %></div>
  <div class="profile-item"><label>Gender:</label> <%=s.getGender() %></div>
  <div class="profile-item"><label>DOB:</label> <%=s.getDateofbirth() %></div>
  <div class="profile-item"><label>Email:</label> <%=s.getEmail() %></div>
  <div class="profile-item"><label>Location:</label> <%=s.getLocation() %></div>
  <div class="profile-item"><label>Contact:</label> <%=s.getContact() %></div>
</div>


</body>
</html>
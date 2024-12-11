<%@page import="com.klef.jfsd.springboot.model.Parent" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Parent p = (Parent) session.getAttribute("parent");
if (p == null) {
    response.sendRedirect("parentlogin"); // Redirect to login page if session expired
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parent Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%@include file="parentnavbar.jsp" %>
<div class="profile-container">
  <h3 align="center">My Profile</h3>
  <div class="profile-item"><label>ID:</label> <%= p.getId() %></div>
  <div class="profile-item"><label>Name:</label> <%= p.getName() %></div>
  <div class="profile-item"><label>Gender:</label> <%= p.getGender() %></div>
  <div class="profile-item"><label>DOB:</label> <%= p.getDateofbirth() %></div>
  <div class="profile-item"><label>Email:</label> <%= p.getEmail() %></div>
  <div class="profile-item"><label>Location:</label> <%= p.getLocation() %></div>
  <div class="profile-item"><label>Contact:</label> <%= p.getContact() %></div>
</div>
</body>
</html>

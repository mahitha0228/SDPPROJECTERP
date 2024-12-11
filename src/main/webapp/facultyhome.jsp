<%@page import="com.klef.jfsd.springboot.model.Faculty" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Faculty f =(Faculty) session.getAttribute("faculty");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Home</title>
</head>
<body>
<%@include file="facultynavbar.jsp" %><br/><br/>
Welcome <%=f.getName() %>
</body>
</html>
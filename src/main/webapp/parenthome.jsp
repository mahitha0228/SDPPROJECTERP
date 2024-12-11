<%@page import="com.klef.jfsd.springboot.model.Parent" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Parent p = (Parent) session.getAttribute("parent");
if (p == null) {
    response.sendRedirect("parentlogin");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parent Home</title>
</head>
<body>
<%@include file="parentnavbar.jsp" %><br/><br/>
Welcome <%= p.getName() %>
</body>
</html>

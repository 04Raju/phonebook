<%@ page language="java" contentType="text/html; charset= ISO-8859-1"
 pageEncoding="ISO-8859-1" %>
 <%@ page import="com.phones.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Phone Book</title>
<%@include file="Components/Css.jsp"%>
<style>
.back-img{
background:url("https://files.realpython.com/media/Build-a-Contact-Book_Watermarked.02531f28c45c.jpg");
width:100%;  
height:80vh;
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>
<body>
<%@include file="Components/Navbar.jsp"%>

<div class="container back-img">
<h2 class="text-center text-primary">Welcome to your phoneBook Web App</h2>
</div>
<%@include file="Components/footer.jsp" %>
</body>
</html>
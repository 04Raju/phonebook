<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@include file="Components/Css.jsp"%>
</head>
<body>
<%@include file="Components/Navbar.jsp"%>

<div class="container my-4 w-50">
<div class="card">
<div class="card-header">
<h5 class="">Login</h5>
<% String invalidMsg=(String)session.getAttribute("invalidMsg"); 
	if(invalidMsg !=null){
		%>
		<h5 class="text-center text-danger"><%=invalidMsg %></h5>
		<% 
		session.removeAttribute("invalidMsg");
	}
	
	 String logoutMsg=(String)session.getAttribute("logoutMsg"); 
		if(logoutMsg !=null){
			%>
			<h5 class="text-center text-success"><%=logoutMsg %></h5>
			<% 
			session.removeAttribute("logoutMsg");
		}
	

%>
</div>

<div class="card-body">
<form action ="${pageContext.request.contextPath}/login" method ="post">
<div class="form-group">
    <label for="Email">Email Address</label>
    <input type="email"  name="email"class="form-control" id="Email" required>
  </div>
  <div class="form-group">
    <label for="Password">Password</label>
    <input type="password" required name="password"class="form-control" id="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
  </div>
  <div class="form-group text-center">
  <button class="btn btn-block btn-success">Login Now</button>
  <a class="text-primary text-center h6 my-1" href="register.jsp">Don't have Account/ Register</a>
    </div>
</form>
</div>
</div>
</div>


<%@include file="Components/footer.jsp"%>
</body>
</html>
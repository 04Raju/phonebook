<%@ page language="java" contentType="text/html; charset= ISO-8859-1"
 pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<%@include file="Components/Css.jsp"%>

</head>
<body>
<%@include file="Components/Navbar.jsp"%>
<div class="container-fluid">
<div class="container w-50 my-3">
<div class="card">
<div class="card-header">
<h4 class="">Register</h4>
<% String sucessMsg =(String)session.getAttribute("successMsg");
	String errorMsg = (String)session.getAttribute("errorMsg");
if(sucessMsg != null){
	%>
	<h5 class="text-center text-success"><%=sucessMsg %></h5>
	<% 
	session.removeAttribute("successMsg");
}

if(errorMsg !=null){
	%>
	<h5 class="text-center text-danger"><%=errorMsg %></h5>
	<% 
	session.removeAttribute("errorMsg");
}
%>

</div>
<div class="card-body">
<form action ="${pageContext.request.contextPath}/register" method ="post">
<div class="form-group">
    <label for="Fname">Full Name</label>
    <input type="text"  name="Fname"class="form-control" id="Fname" required>
  </div>
  <div class="form-group">
    <label for="Email">Email Address</label>
    <input type="email"  name="Email"class="form-control" id="Email" required>
  </div>
  <div class="form-group">
    <label for="Password">Password</label>
    <input type="password" required  name="Password"class="form-control" id="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
  </div>
  
   <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="check" required>
    <label class="form-check-label" for="check">Accept Terms & Conditions</label>
  </div>
  <div class="form-group text-center">
  <button class="btn btn-block btn-success">Register Now</button>
   <a class="text-primary text-center h6 my-1" href="login.jsp">Already have a Account/ Login</a>
    </div>
</form>

</div>

</div>


</div>
</div>
<%@ include file="Components/footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset= ISO-8859-1"
 pageEncoding="ISO-8859-1" %>
 
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Phone Book</title>
<%@include file="Components/Css.jsp"%>

</head>
<body>
<%@include file="Components/Navbar.jsp" %>
<% if(user == null){
	session.setAttribute("invalidMsg", "First Login Please");
	response.sendRedirect("login.jsp");
}


%>
<div class="container w-75">

<div class="contianer my-4 ">
<div class="card p-2 ">
<div class="card-header">
<h5 class="">Add Contact</h5>
<%
String sucessMsg =(String)session.getAttribute("SuccMsg");
String errorMsg = (String)session.getAttribute("FaildMsg");
if(sucessMsg != null){
%>
<h5 class="text-center text-success"><%=sucessMsg %></h5>
<% 
session.removeAttribute("SuccMsg");
}

if(errorMsg !=null){
%>
<h5 class="text-center text-danger"><%=errorMsg %></h5>
<% 
session.removeAttribute("FaildMsg");
}


%>
</div>
<div class="card-body">
<form action="${pageContext.request.contextPath}/addContact" method="post">

<%
if(user != null){ %>
	<input type="hidden" name="Userid" value="<%= user.getId()%>">
	<%
}
%>
<div class="row">
<div class="col-lg-6 col-sm-12 ">
<div class="form-group">
    <label for="Fname" class="font-weight-bolder">First Name</label>
    <input type="text"  name="Fname" class="form-control" id="Fname" placeholder="Rajesh"required>
  </div>
</div>
<div class="col-lg-6 col-sm-12 ">
<div class="form-group">
    <label for="Lname" class="font-weight-bolder">Last Name</label>
    <input type="text"  name="Lname" class="form-control" placeholder="jettappa" id="Lname" required>
  </div>
</div>
</div>
<div class="form-group">
    <label for="Email" class="font-weight-bolder">Email</label>
    <input type="text"  name="Email"class="form-control" placeholder="example@gmail.com" id="Email" >
  </div>
  <div class="row">
  <div class="col-lg-6 col-sm-12 ">
  <div class="form-group">
    <label for="Phone" class="font-weight-bolder">Phone Number</label>
    <input type="Number"  name="Phone"class="form-control" placeholder="+91 8104843530" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3} id="Phone" >
  </div>
  </div>
    <div class="col-lg-6 col-sm-12 ">
    <div class="form-group">
    <label for="Phone" class="font-weight-bolder">Alternative Phone Number</label>
    <input type="Number"  name="APhone"class="form-control" placeholder="+91 8104843530" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3} id="Phone" >
  </div>
  </div>
  </div>
  <div class="row">
  <div class="col-lg-6 col-sm-12 ">
  <div class="form-group">
    <label for="label" class="font-weight-bolder">Select label</label><br>
   <select id="label" class="form-control w-100" name="Label">
   <option>Home</option>
   <option>Office</option>
   <option>Other</option>
   </select>
  </div>
  </div>
  <div class="col-lg-6 col-sm-12 ">
  <div class="form-group">
    <label for="company" class="font-weight-bolder">Company</label>
    <input type="text"  name="Company"class="form-control" placeholder="Wipro" id="company" >
  </div>
  </div>
  </div>
  <div class="form-group">
    <label for="about" class="font-weight-bolder">About</label>
    <textarea name="About" class="form-control"  row="3"placeholder="information about contact" id="about" ></textarea>
  </div>

 <div class="form-group text-center">
    <button type="submit" class="btn btn-success w-25">Save Contact</button>
    <button type="reset" class="btn btn-danger w-25">Rest</button>
  </div>
</form>

</div>

</div>

</div>

</div>


</body>
</html>
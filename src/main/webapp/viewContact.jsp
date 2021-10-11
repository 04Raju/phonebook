<%@page import="com.entity.Contacts"%>
<%@page import="java.util.List"%>
<%@page import="com.phones.ContactDAO"%>
<%@page import="com.phones.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset= ISO-8859-1"
 pageEncoding="ISO-8859-1" %>
 
<!DOCTYPE html>
<html>
<head>
<title>View Contacts</title>
<%@include file="Components/Css.jsp"%>
<style>
td{
cursor:pointer;
}
td a{
cursor:pointer;
}
</style>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>
<% if(user == null){
	session.setAttribute("invalidMsg", "First Login Please");
	response.sendRedirect("login.jsp");
}


%>
<div class="container-fluid p-0">

<div class="my-4 table-responive">

<table class="table table-striped table-bordered " id="contacts">
  <thead class=" ">
    <tr>
      <th class="text-center" scope="col">Sr_no</th>
      <th class="text-center" scope="col">First Name</th>
      <th class="text-center" scope="col">Last Name</th>
      <th class="text-center" scope="col">Email</th>
      <th class="text-center" scope="col">Phone</th>
      <th class="text-center" scope="col">View</th>
      <th class="text-center" scope="col">Edit</th>
      <th class="text-center" scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <%  
  if(user != null){
  ContactDAO dao = new ContactDAO(ConnectionProvider.getConnection());
  List<Contacts> contact = dao.getAllContacts(user.getId());
  int sr=1;
  for(Contacts c:contact){
	  %>
	  <tr>
	  <td class="text-center" scope="row" style="width:8%"><%=sr++%></td>
	  <td class="text-center" scope="row" style="width:12%"><%= c.getFname() %></td>
	  <td class="text-center" scope="row" style="width:12%"><%= c.getLname() %></td>
	  <td class="text-center" scope="row" style="width:12%"><%= c.getEmail() %></td> 
	  <td class="text-center" scope="row" style="width:12%"><%= c.getPhone() %></td>
	  <th class="text-center" scope="row" style="width:9%"><a class="text-primary">View</a></th>
	  <th class="text-center" scope="row" style="width:9%"><a class="text-success">Edit</a></th>
	  <th class="text-center" scope="row" style="width:9%"><a class="text-danger">Delete</a></th>
	  
	   
	    
	  
	  </tr>
	  
	  <% 
  }
  
  }
  
  %>
  </tbody>
  </table>

</div>

</div>


<script>

$(document).ready( function () {
    
	$('#contacts').DataTable({

		  "bFilter": true,
		  "bInfo": true,
		  "sort":false,
		  "lengthMenu":[
		      [15,25,50,-1],
		      [15,25,50,"All"]
		  ],

		  responsive:true,

		  language:{

		    //"search": "_INPUT_",
		     searchPlaceholder:"Search Timeline",
		  }

		});
    
} );


</script>

</body>
</html>
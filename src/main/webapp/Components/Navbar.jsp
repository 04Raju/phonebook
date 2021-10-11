<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-info">
  <a class="navbar-brand" href="#"><i class="fa fa-phone-square" aria-hidden="true"></i> PHONEBOOK</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"> <i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="addContact.jsp"> <i class="fa fa-address-card-o" aria-hidden="true"></i> Add phone</a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="viewContact.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i> View Contact</a>
      </li>
      
      
      
    </ul>
    <% User user=(User)session.getAttribute("user");
    if(user == null){
  
    %>
    <form class="form-inline my-2 my-lg-0">
     <a href="login.jsp" class="btn btn-success"><i class="fa fa-sign-in" aria-hidden="true"></i> LOGIN</a>
     <a href="register.jsp" class="btn btn-danger ml-2"><i class="fa fa-user-plus" aria-hidden="true"></i> REGISTER</a>
    </form>
    <% }else{
    	%>
    	 <form class="form-inline my-2 my-lg-0">
     <a href="" class="btn btn-success"><%=user.getName()%></a>
     <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger ml-2"><i class="fa fa-user-plus" aria-hidden="true"></i> Log-out</a>
    </form>
    	<% 
    }
    
    %>
  </div>
</nav>
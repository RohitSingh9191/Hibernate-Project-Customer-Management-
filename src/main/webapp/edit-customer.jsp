<%@ include file="navbar.jsp" %>
<%@ page import="com.hibernate.*" %>
<%@ page import="com.hibernate.*" %>
  <%  
  int cid=Integer.parseInt(request.getParameter("cid"));
  Customer p=CustomerRepo.getCustomer(cid);
	if(p==null)
	{
    	
	    %>
	  <jsp:include page="delete.jsp" />
		<div class='dv'>
		 <h2 style='color:red'>Customer's record with id <%=cid%> does not exist</h2>
	  </div>
	<%
	}
	
	else{%>
<html>
  <body >
  <% 
  Customer ust=CustomerRepo.getCustomer(cid);
  %>
  <div class='container'>
   <div class='card col-md-10'>
    <div class='card-body'>
     <form action="update-customer.jsp" method="post">
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='cid' class='la'>Customer id</label>
        <input type='text' readonly value='<%=ust.getCid()%>' name='cid' id='cid' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-5'>
        <label for='firstname' class='la'>Edit first name</label>
        <input type='text' value='<%=ust.getFirstname()%>' name='firstname' id='firstname' class='form-control la' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='lastname' class='la'>Edit last name</label>
        <input type='text' value='<%=ust.getLastname()%>' name='lastname' id='lastname' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-5'>
        <label for='address' class='la'>Edit address</label>
        <input type='text' value='<%=ust.getAddress()%>' name='address' id='address' class='form-control la' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='phone' class='la'>Edit phone number</label>
        <input type='text' value='<%=ust.getPhone()%>' name='phone' id='phone' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='email' class='la'>Edit email id</label>
        <input type='text' value='<%=ust.getEmail()%>' name='email' id='email' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-10'>
         <button class='btn btn-primary'>Update Record</button>
       </div>
      </div>
     </form>
    </div>
   </div>
  </div>
 </body>
</html>
<%}
%>
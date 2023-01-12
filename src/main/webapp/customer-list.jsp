<%@page import="java.util.List" %>
<%@ include file="navbar.jsp" %>
<%@ page import="com.hibernate.*" %>
<html>
  <body onload="makeActive('list')">
  <div class='container'>
   <div class='card col-md-12'>
    <div class='card-body'>
     <table class='table table-hover'>
      <%
        List<Customer> list=CustomerRepo.getCustomerList();
      %>
      <thead>
       <tr>
        <th>Customer Id</th><th>First name</th><th>Last name</th>
        <th>Address</th><th>Phone number</th><th>Email id</th>
        <th style='color:magenta'>Action</th>
       </tr>
      </thead>
      <tbody>
       <%
      for(Customer cust:list)
       {
    	   %>
    	   <tr>
    	    <td><%=cust.getCid()%></td><td><%=cust.getFirstname()%></td>
    	    <td><%=cust.getLastname()%></td><td><%=cust.getAddress()%></td>
    	    <td><%=cust.getPhone()%></td><td><%=cust.getEmail()%></td>
    	    <td>
    	    	<a href='edit-record.jsp?cid=<%=cust.getCid()%>'>Edit |</a>
    	    	<a href='delete-record.jsp?cid=<%=cust.getCid()%>' onclick='return confirm("Are you sure to delete?")'>Delete</a>
    	    </td>
    	   </tr>
    	   <%
       }
       %>
      </tbody>
     </table>
    </div>
   </div>
  </div>
 </body>
</html>
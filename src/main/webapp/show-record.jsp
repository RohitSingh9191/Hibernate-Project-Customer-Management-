<%@ page import="com.hibernate.*" %>
<html>
  <html>
  <body onload="makeActive('search')">
  <%
   int cid=Integer.parseInt(request.getParameter("cid"));
   Customer cust=CustomerRepo.getCustomer(cid);
   if(cust!=null)
   {
	   %>
	   <%@ include file='navbar.jsp' %>
	   <table border='1' class='tar las'>
	    <tr style='background-color:orange;color:white;font-size:1.8vw'>
	     <td colspan="2" align="center">Customer Details</td>
	    </tr>
	    <tr>
	     <th align="left">Customer id</th>
	     <td><%=cust.getCid()%></td>
	    </tr>
	    <tr>
	     <th align="left">First name</th>
	    <td><%=cust.getFirstname()%></td>
	    </tr>
	     <tr>
	     <th align="left">Last name</th>
	     <td><%=cust.getLastname()%></td>
	    </tr>
	     <tr>
	     <th align="left">City</th>
	     <td><%=cust.getAddress()%></td>
	    </tr>
	     <tr>
	     <th align="left">Phone number</th>
	     <td><%=cust.getPhone()%></td>
	    </tr>
	     <tr>
	     <th class='lb' align="left">Email Id</th>
	     <td><%=cust.getEmail()%></td>
	    </tr>
	   </table>
	   <%
	   return;
   }
  %>
  <jsp:include page="search-customer.jsp" />
  <div class='dvv'>
   <label class='la' style='color:red'>
   		Customer with id <%=request.getParameter("cid")%> not found
    </label>
  </div>
 </body> 
</html>
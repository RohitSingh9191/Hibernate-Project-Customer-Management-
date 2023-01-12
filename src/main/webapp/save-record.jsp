<%@ include file="navbar.jsp" %>
<%@ page import="com.hibernate.*" %>
<html>
  <body onload="makeActive('add')">
  <%
  int cid=Integer.parseInt(request.getParameter("cid"));
  String fname=request.getParameter("firstname");
  String lname=request.getParameter("lastname");
  String add=request.getParameter("address");
  String phn=request.getParameter("phone");
  String eml=request.getParameter("email");
  Customer cust=new Customer(cid,fname,lname,add,phn,eml);
  CustomerRepo.saveCustomer(cust);
  %>
  <div class='dv'>
   <label class='lah'>Customer has been added/inserted successfully</label>
  </div>
 </body>
</html>
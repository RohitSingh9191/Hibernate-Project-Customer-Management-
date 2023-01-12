
<%@ page import="com.hibernate.*" %>
  <%
  int cid=Integer.parseInt(request.getParameter("cid"));
  String fname=request.getParameter("firstname");
  String lname=request.getParameter("lastname");
  String add=request.getParameter("address");
  String phn=request.getParameter("phone");
  String eml=request.getParameter("email");
  Customer cust=new Customer(cid,fname,lname,add,phn,eml);
  CustomerRepo.updateCustomer(cust);


  %>
 <jsp:include page="edit.jsp" />
		<div class='dv'>
			<h2 style='color:red'>Customer's record has been updated successfully</h2>
		</div>	
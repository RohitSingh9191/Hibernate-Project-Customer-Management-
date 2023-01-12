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
	
	else
	{
		CustomerRepo.deleteCustomer(cid);
	%>
		<jsp:include page="delete.jsp" />
		<div class='dv'>
			<h2 style='color:red'>Customer's record with id <%=cid%> has been deleted successfully</h2>
		</div>	
	<%}
	

%>	

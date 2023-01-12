<%@ page import="com.hibernate.*" %>
  <%
  int cid=Integer.parseInt(request.getParameter("cid"));
  CustomerRepo.deleteRecord(cid);
  response.sendRedirect("customer-list.jsp");
  %>
  

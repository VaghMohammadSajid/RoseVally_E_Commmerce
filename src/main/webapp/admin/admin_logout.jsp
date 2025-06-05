
<%
System.out.println(session.getId());

session.removeAttribute("admin_id");
session.removeAttribute("admin_name");
session.removeAttribute("admin_email");

response.sendRedirect("admin_login.jsp");
%>
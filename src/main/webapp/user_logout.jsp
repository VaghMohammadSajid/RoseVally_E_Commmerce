
<%

System.out.println(session.getId());

session.removeAttribute("user_id");
session.removeAttribute("user_name");
session.removeAttribute("user_email");

response.sendRedirect("user_login.jsp");
%>
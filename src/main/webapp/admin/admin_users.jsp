<%@page import="org.hibernate.Session"%>
<%@page import="com.Tables.User"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%
Session s = FactoryProvider.getSession();

try {
	Long userId = (Long) session.getAttribute("admin_id");

	if (userId == null) {
		response.sendRedirect("admin_login.jsp");
	}

} catch (Exception e) {
	e.printStackTrace();
} finally {
	s.close();
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>RoseValley Admin Panel</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- site icon -->
<link rel="icon" href="images/fevicon.png" type="image/png" />
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- site css -->
<link rel="stylesheet" href="style.css" />
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css" />
<!-- color css -->
<link rel="stylesheet" href="css/colors.css" />
<!-- select bootstrap -->
<link rel="stylesheet" href="css/bootstrap-select.css" />
<!-- scrollbar css -->
<link rel="stylesheet" href="css/perfect-scrollbar.css" />
<!-- custom css -->
<link rel="stylesheet" href="css/custom.css" />
<!-- calendar file css -->
<link rel="stylesheet" href="js/semantic.min.css" />
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<body class="inner_page widgets">
	<div class="full_container">
		<div class="inner_container">

			<!-- Sidebar  -->
			<%@include file="sidebar.jsp"%>
			<!-- End Sidebar  -->

			<!-- right content -->
			<div id="content">
				<!-- topbar -->
				<%@include file="topbar.jsp"%>
				<!-- end topbar -->
				<!-- dashboard inner -->
				<div class="midde_cont">
					<div class="container-fluid">
						<div class="row column_title">
							<div class="col-md-12">
								<div class="page_title">
									<h2>Users</h2>
								</div>
							</div>
						</div>
						<!-- row -->

						<div class="row column1">
							<%
							s = FactoryProvider.getSession();
							Query q = s.createQuery("from User where userType='user' ");
							List<User> list = q.list();
							if (list != null) {
								for (User user : list) {
							%>
							<div class="col-md-6 col-lg-4">
								<div class="full white_shd margin_bottom_30">
									<div class="info_people">
										<div class="p_info_img">
											<img
												src="<%if ("admin".equals(user.getUserType())) {
                                                    out.println("../flower images/mo-sajid-1.jpg");
                                                } else {
                                                    out.println("../flower images/userLogo1.jpg");
                                                }%>"
												alt="#" />
										</div>
										<div class="user_info_cont">
											<h4><%=user.getName()%></h4>
											<p><%=user.getEmail()%></p>
											<p  class="p_status"
                                                style="color:<%if ("admin".equals(user.getUserType())) {
                                                    out.println("#1ed085");
                                                } else {
                                                    out.println("red");
                                                }%>"><%=user.getUserType()%>
                                            </p>
										</div>
									</div>
								</div>
							</div>
							<%
							}
							} else {
							out.println("<h5>No Users Yet!!</h5>");
							}
							s.close();
							%>
						</div>

						<!-- end row -->
						<!-- footer -->
						<%@include file="footer.jsp"%>
						<!-- End footer -->

					</div>
					<!-- end dashboard inner -->
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- wow animation -->
	<script src="js/animate.js"></script>
	<!-- select country -->
	<script src="js/bootstrap-select.js"></script>
	<!-- nice scrollbar -->
	<script src="js/perfect-scrollbar.min.js"></script>
	<script>
		var ps = new PerfectScrollbar('#sidebar');
	</script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
</body>
</html>
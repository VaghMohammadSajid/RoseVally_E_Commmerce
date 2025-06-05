<%@page import="com.Tables.User"%>
<%@page import="com.Tables.Message"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
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
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<body class="dashboard dashboard_1">
	<div class="full_container">
		<div class="inner_container">

			<!-- Sidebar  -->
			<%@include file="sidebar.jsp"%>
			<!-- End Sidebar  -->

			<!-- right content -->
			<div id="content">

				<!-- Start topbar -->
				<%@include file="topbar.jsp"%>
				<!-- End topbar -->
				<!-- dashboard inner -->
				<div class="midde_cont">
					<div class="container-fluid">
						<div class="row column_title">
							<div class="col-md-12">
								<div class="page_title">
									<h2>Dashboard</h2>
								</div>
							</div>
						</div>
						<div class="row column1">
							<%
							s = FactoryProvider.getSession();
							s.beginTransaction();

							//Hibernate Query
							String hql = "SELECT COUNT(*) FROM User where userType = 'user' ";
							Query<Long> q = s.createQuery(hql, Long.class);

							Long NumberOfUserTotal = q.getSingleResult();

							s.getTransaction().commit();
							%>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-user yellow_color"></i>
										</div>
									</div>
									<div class="counter_no">
										<div>
											<p class="total_no"><%=NumberOfUserTotal%></p>
											<p class="head_couter">Total Users</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-clock-o blue1_color"></i>
										</div>
									</div>
									<div class="counter_no">
										<div>
											<p class="total_no">123.50</p>
											<p class="head_couter">Average Time</p>
										</div>
									</div>
								</div>
							</div>
							<%
							s = FactoryProvider.getSession();
							s.beginTransaction();

							//Hibernate Query
							String hqlProduct = "SELECT COUNT(*) FROM Products";
							Query<Long> QProduct = s.createQuery(hqlProduct, Long.class);

							Long NumberOfProduct = QProduct.getSingleResult();

							s.getTransaction().commit();
							%>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-cloud-download green_color"></i>
										</div>
									</div>
									<div class="counter_no">
										<div>
											<p class="total_no"><%=NumberOfProduct %></p>
											<p class="head_couter">Products</p>
										</div>
									</div>
								</div>
							</div>
							<%
							s = FactoryProvider.getSession();
							s.beginTransaction();

							//Hibernate Query
							String hqlMessage = "SELECT COUNT(*) FROM Message";
							Query<Long> QMessage = s.createQuery(hqlMessage, Long.class);

							Long NumberOfMessage = QMessage.getSingleResult();

							s.getTransaction().commit();
							%>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-comments-o red_color"></i>
										</div>
									</div>
									<div class="counter_no">
										<div>
											<p class="total_no"><%=NumberOfMessage %></p>
											<p class="head_couter">Comments</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- footer -->
						<%@include file="footer.jsp"%>
						<!-- End footer -->

					</div>
					<!-- end dashboard inner -->
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
			<!-- owl carousel -->
			<script src="js/owl.carousel.js"></script>
			<!-- chart js -->
			<script src="js/Chart.min.js"></script>
			<script src="js/Chart.bundle.min.js"></script>
			<script src="js/utils.js"></script>
			<script src="js/analyser.js"></script>
			<!-- nice scrollbar -->
			<script src="js/perfect-scrollbar.min.js"></script>
			<script>
				var ps = new PerfectScrollbar('#sidebar');
			</script>
			<!-- custom js -->
			<script src="js/chart_custom_style1.js"></script>
			<script src="js/custom.js"></script>
</body>
</html>
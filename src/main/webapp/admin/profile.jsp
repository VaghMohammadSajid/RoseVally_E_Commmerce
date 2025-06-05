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

				<main id="main" class="main">
					<div class="pagetitle">
						<h1>Profile</h1>
						<nav>
							<ol class="breadcrumb" style="background-color: #e5e8f140;">
								<li class="breadcrumb-item"><a href="admin_page.php">Home</a></li>
								<li class="breadcrumb-item">Admin</li>
								<li class="breadcrumb-item active" style="color: #801600fa;">Profile</li>
							</ol>
						</nav>
					</div>
					<!-- End Page Title -->

					<section class="section profile">
						<div class="row">
							<div class="col-xl-4">
								<div class="card" style="background-color: #e5e8f140;">
									<div
										class="card-body profile-card pt-4 d-flex flex-column align-items-center">
										<img width="180"
											style="border-radius: 25px 0px 25px 0px; box-shadow: 0.5px 0.5px 4.5px 0 black;"
											src="../flower images/mo-sajid-1.jpg" alt="#" />
										<h4 style="margin-top: 12px;">Mohammad Sajid</h4>
										<h5>Admin</h5>

									</div>
								</div>
							</div>
							<div class="col-xl-8">

								<div class="card" style="background-color: #e5e8f140;">
									<div class="card-body pt-3">
										<div class="tab-content pt-2">

											<div class="tab-pane fade show active profile-overview"
												style="font-size: 20px;" id="profile-overview">
												<h5 class="card-title" style="font-size: 25px;">About</h5>
												<p class="small fst-italic">My name is vagh mohammad
													sajid. I was working in a nursery for the last 10 years.
													But now I have opened my own shop and I will always provide
													satisfactory service to my clients.</p>

												<h5 class="card-title" style="font-size: 25px;">Profile
													Details</h5>

												<div class="row" style="font-size: 20px;">
													<div class="col-lg-3 col-md-4 label"
														style="color: #801600fa;">Full Name</div>
													<div class="col-lg-9 col-md-8">Mohammad Sajid</div>
												</div>

												<div class="row" style="font-size: 20px;">
													<div class="col-lg-3 col-md-4 label"
														style="color: #801600fa;">Shope</div>
													<div class="col-lg-9 col-md-8">Rose Valley</div>
												</div>

												<div class="row" style="font-size: 20px;">
													<div class="col-lg-3 col-md-4 label"
														style="color: #801600fa;">Country</div>
													<div class="col-lg-9 col-md-8">India</div>
												</div>

												<div class="row" style="font-size: 20px;">
													<div class="col-lg-3 col-md-4 label"
														style="color: #801600fa;">Address</div>
													<div class="col-lg-9 col-md-8">Ilol-383220,Himmatnagar</div>
												</div>

												<div class="row" style="font-size: 20px;">
													<div class="col-lg-3 col-md-4 label"
														style="color: #801600fa;">Phone</div>
													<div class="col-lg-9 col-md-8">8980331323</div>
												</div>

												<div class="row" style="font-size: 20px;">
													<div class="col-lg-3 col-md-4 label"
														style="color: #801600fa;">Email</div>
													<div class="col-lg-9 col-md-8">vaghmohammadsajid8@gmail.com</div>
												</div>

											</div>

										</div>
										<!-- End Bordered Tabs -->

									</div>
								</div>

							</div>
						</div>
					</section>

				</main>
				<!-- End #main -->
				<!-- footer -->
				<%@include file="footer.jsp"%>
				<!-- End footer -->

			</div>
			<!-- end dashboard inner -->
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
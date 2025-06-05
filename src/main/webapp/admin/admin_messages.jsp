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
						<h1>Message Tables</h1>
						<nav>
							<ol class="breadcrumb" style="background-color: #e5e8f140;">
								<li class="breadcrumb-item"><a href="admin_page.php">Home</a></li>
								<li class="breadcrumb-item">Tables</li>
								<li class="breadcrumb-item active" style="color: #801600fa;">Message</li>
							</ol>
						</nav>
					</div>
					<!-- End Page Title -->
					<section class="show-products">
						<div class="container" style="background-color: #e5e8f140;">
							<table class="table">
								<thead>
									<tr>
										<th scope="col" style="color: #801600fa;">User Id :</th>
										<th scope="col" style="color: #801600fa;">Name :</th>
										<th scope="col" style="color: #801600fa;">Number :</th>
										<th scope="col" style="color: #801600fa;">Email :</th>
										<th scope="col" style="color: #801600fa;">Message :</th>
										<th scope="col" style="color: #801600fa;">Delete :</th>

									</tr>
								</thead>
								<%
								s = FactoryProvider.getSession();
								Query q = s.createQuery("from Message");
								List<Message> list = q.list();
								if (list != null) {
									for (Message mess : list) {
								%>
								<tr style="font-size: 20px;">
									<td><%=mess.getUserId()%></td>
									<td><%=mess.getName()%></td>
									<td><%=mess.getNumber()%></td>
									<td><%=mess.getEmail()%></td>
									<td><%=mess.getMess()%></td>
									<td><a class="btn btn-success" href="admin_messages.jsp"
										class="delete-btn"
										style="color: whitesmoke; background-color: #bc0c0c; border: 2px solid #c3baba;">Delete
											Message</a></td>
								</tr>
								<%
								}
								} else {
								out.println("<h5>No Message Yet!!</h5>");
								}
								s.close();
								%>
							</table>
						</div>
					</section>

				</main>


				<!-- end row -->
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
	<!-- nice scrollbar -->
	<script src="js/perfect-scrollbar.min.js"></script>
	<script>
		var ps = new PerfectScrollbar('#sidebar');
	</script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
</body>
</html>
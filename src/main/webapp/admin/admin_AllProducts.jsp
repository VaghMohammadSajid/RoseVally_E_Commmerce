<%@page import="com.Tables.Products"%>
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

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;display=swap"
	rel="stylesheet">
<!-- place -->
<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</head>
<body class="inner_page widgets">
	<div class="full_container">
		<div class="inner_container">
			<!-- Sidebar  -->
			<%@include file="sidebar.jsp"%>
			<!-- end sidebar -->
			<!-- right content -->
			<div id="content">
				<!-- topbar -->
				<%@include file="topbar.jsp"%>
				<!-- end topbar -->
				<!-- dashboard inner -->

				<!-- Start row -->
				<main id="main" class="main">
					<div class="pagetitle">
						<h1>Show All Products Tables</h1>
						<nav>
							<ol class="breadcrumb" style="background-color: #e5e8f140;">
								<li class="breadcrumb-item"><a href="admin_page.php">Home</a></li>
								<li class="breadcrumb-item">Tables</li>
								<li class="breadcrumb-item active">All
									Products</li>
							</ol>
						</nav>
					</div>
					<!-- End Page Title -->
					<section class="show-products">
						<div class="container">
							<table class="table" style="background-color: white;">
								<thead>
									<tr>
										<th scope="col">P_Id</th>
										<th scope="col">Name</th>
										<th scope="col">Images</th>
										<th scope="col">Description</th>
										<th scope="col">Price</th>
										<th scope="col">Update</th>
										<th scope="col">Delete</th>

									</tr>
								</thead>
								<%
								s = FactoryProvider.getSession();
								Query q = s.createQuery("From Products");
								List<Products> list = q.list();
								if (list != null) {
									for (Products prod : list) {
								%>
								<tr style="font-size: 20px;">
									<td>
										<%=prod.getId() %>
									</td>
									<td>
										<%=prod.getPname() %>
									</td>
									<td><img class="image"
										src="../uploaded_img/<%=prod.getPimage()%>"
										alt="" style="width: 100%; height: 100px;"></td>
									<td>
										<%=prod.getDetails() %>
									</td>
									<td>
										<%=prod.getPrice() %>
									</td>
									<td><a
										href="admin_update_product.php?update=<?php echo $fetch_products['id']; ?>"
										class="btn btn-success">Edit</a></td>
									<td><a
										href="admin_allproducts.php?delete=<?php echo $fetch_products['id']; ?>"
										class="btn btn-danger"
										onclick="return confirm('delete this product?');">Delete</a></td>
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
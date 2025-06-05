<%@page import="com.Tables.Products"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.Tables.User"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>

<%
Session s = FactoryProvider.getSession();

try {
	Long userId = (Long) session.getAttribute("admin_id");

	if (userId == null) {
		response.sendRedirect("user_login.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
} finally {
	s.close();
}
%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Site metas -->
<title>RoseValley Admin Panel</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- Site icon -->
<link rel="icon" href="images/logo/logo.png" type="image/png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Select Bootstrap -->
<link rel="stylesheet" href="css/bootstrap-select.css">
<!-- Scrollbar CSS -->
<link rel="stylesheet" href="css/perfect-scrollbar.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
</head>
<body class="inner_page widgets">
	<div class="full_container">
		<div class="inner_container">
			<!-- Sidebar -->
			<%@include file="sidebar.jsp"%>
			<!-- End Sidebar -->
			<!-- Right content -->
			<div id="content">
				<!-- Topbar -->
				<%@include file="topbar.jsp"%>
				<!-- End Topbar -->
				<!-- Start row -->
				<main id="main" class="main">
					<div class="pagetitle">
						<h1>Insert Products Tables</h1>
						<nav>
							<ol class="breadcrumb" style="background-color: #e5e8f140;">
								<li class="breadcrumb-item"><a href="admin_page.php">Home</a></li>
								<li class="breadcrumb-item">Tables</li>
								<li class="breadcrumb-item active" style="color: #801600fa;">Update
									Products</li>
							</ol>
						</nav>
					</div>
					<!-- End Page Title -->
					<section class="show-products">
						<div class="container">
							<h5 id="message"
								class="card-title property-grid-footer fw-800 d-flex justify-content-center"></h5>
							<!-- Recent Sales -->
							<div class="col-8">
								<div class="card recent-sales">
									<div class="card-body" style="background-color: #e5e8f140;">
										<div class="form">
											<%
											int pid = Integer.parseInt(request.getParameter("UpdateId").trim());
											s = FactoryProvider.getSession();
											
											Products prod = (Products)s.get(Products.class, pid);
											%>
											<form action="../AdminUpdateProductServlet" method="POST"
												enctype="multipart/form-data" id="myform">
												<h2
													class="card-title property-grid-footer fw-800 d-flex justify-content-center"
													style="font-size: 35px;">Update Product</h2>

										

												<div class="form-group d-flex justify-content-center">
													<input type="text" class="form-control" required
														placeholder="Enter Product Name"
														value="<%=prod.getPname()%>" name="Pname">
												</div>
												<div class="form-group d-flex justify-content-center">
													<input type="text" class="form-control" required
														placeholder="Enter Product Price"
														value="<%=prod.getPrice()%>" name="Pprice">
												</div>
												<div class="form-group d-flex justify-content-center">
													<textarea name="Pdetails" <%=prod.getDetails()%>
														class="form-control" cols="30" rows="10" required
														placeholder="Enter Product Details"></textarea>
												</div>
												<div class="form-group d-flex justify-content-center">
													<input type="file" value="<%=prod.getPimage()%>" required
														class="form-control" name="Pimage">
												</div>
												<div class="text-center">
													<button type="submit"
														class="d-flex justify-content-center main_bt">Update
														Product</button>
												</div>
											</form>

										</div>
										<div class="status" style="margin-top: 10px; display: none;">
											<div class="d-flex justify-content-center">
												<div class="spinner-border" role="status">
													<h5 style="font-size: 22px;">Please wait...</h5>
												</div>
											</div>

										</div>
									</div>
								</div>
								<!-- End Recent Sales -->
							</div>
						</div>
					</section>
				</main>
				<!-- End Row -->
				<!-- Footer -->
				<%@include file="footer.jsp"%>
				<!-- End Footer -->
			</div>
			<!-- End Dashboard Inner -->
		</div>
	</div>
	<!-- jQuery -->
	<script>
      $(document).ready(function () {
        console.log("page is ready...");

        $("#myform").on('submit', function (event) {
          event.preventDefault();

          var formData = new FormData(this);

          $(".status").show();
          $(".form").hide();

          $.ajax({
            url: "../AdminUpdateProductServlet",
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function (data) {
              $(".status").hide();
              $(".form").show();

              if (data.trim() === 'done') {
                $('#message').html("Successfully Updated!").addClass('text-success');
              } else if (data.trim() === 'productalreadyexist') {
                $('#message').html("Product Already Exists!").addClass('text-danger');
              } else {
                $('#message').html("Something Went Wrong!").addClass('text-danger');
              }
            },
            error: function () {
              $(".status").hide();
              $(".form").show();
              $('#message').html("AJAX Error Occurred!").addClass('text-danger');
            }
          });
        });
      });
    </script>

</body>
</html>

<%@page import="org.hibernate.Session"%>
<%@page import="com.Tables.User"%>
<%@page import="java.util.List"%>
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
    <link rel="icon" href="images/fevicon.png" type="image/png">
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
                                <li class="breadcrumb-item active" style="color: #801600fa;">Insert Products</li>
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
										<form action="../ProductServlet" method="POST"
											enctype="multipart/form-data" id="myform">
											<h2
												class="card-title property-grid-footer fw-800 d-flex justify-content-center"
												style="font-size: 35px;">Add New Product</h2>
											<div class="form">
												<div class="form-group d-flex justify-content-center">
													<input type="text" class="form-control" required
														placeholder="Enter Product Name" name="Pname">
												</div>
												<div class="form-group d-flex justify-content-center">
													<input type="text" class="form-control" required
														placeholder="Enter Product Price" name="Pprice">
												</div>
												<div class="form-group d-flex justify-content-center">
													<textarea name="Pdetails" class="form-control" cols="30"
														rows="10" required placeholder="Enter Product Details"></textarea>
												</div>
												<div class="form-group d-flex justify-content-center">
													<input type="file" required class="form-control"
														name="Pimage">
												</div>
												<div class="text-center">
													<button type="submit"
														class="d-flex justify-content-center main_bt">Add
														Product</button>
												</div>
											</div>
										</form>
										<div class="status" style="margin-top: 10px; display: none;">
											<div class="d-flex justify-content-center">
												<div class="spinner-border" role="status">
													<span class="visually-hidden">Loading...</span>
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
    <script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {

			console.log("page is ready...")

			$("#myform").on('submit', function(event) {
				event.preventDefault();

				var f = $(this).serialize();
				console.log(f);

				$(".status").show();
				$(".form").hide();

				$.ajax({
					url : "../ProductServlet",
					data : f,
					type : 'POST',
					success : function(data, textStatus, jqXHR) {
						console.log(data);
						console.log("Success...")
						$(".status").hide();
						$(".form").show();
						if (data.trim() == 'done') {
							$('#msg').html("Successfully Registerd !!")
							$('#msg').addClass('text-success')

						} else if (data.trim() == 'alreadyexist') {
							$('#msg').html("User Already Exists !!")
							$('#msg').addClass('text-danger')

						}

						else {
							$('#msg').html("Something Went Wrong !!")

						}

					},
					error : function(jqXHR, textStatus, errorThrown) {
						console.log(data);
						console.log("Error...")
						$(".status").hide();
						$(".form").show();
						$('#msg').html("Something Went Wrong !!")
						$('#msg').addClass('text-danger')
					}
				})
			})
		})
	</script>
    
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Wow Animation -->
    <script src="js/animate.js"></script>
    <!-- Select Country -->
    <script src="js/bootstrap-select.js"></script>
    <!-- Nice Scrollbar -->
    <script src="js/perfect-scrollbar.min.js"></script>
    <script>
        var ps = new PerfectScrollbar('#sidebar');
    </script>
    <!-- Custom JS -->
    <script src="js/custom.js"></script>
</body>
</html>

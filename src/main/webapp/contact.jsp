<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%
Session s = FactoryProvider.getSession();

try {
	Long userId = (Long) session.getAttribute("user_id");

	if (userId == null) {
		response.sendRedirect("user_login.jsp");
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

<title>Rose Valley | Contact Us</title>

<!-- start all css file -->
<%@include file="all_css_file.jsp"%>
<!-- End all css file -->

</head>
<body>
	<%@include file="navbar.jsp"%>

	<!-- Start Subheader -->
	<div class="subheader section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="breadcrumb-wrapper">
						<div class="page-title">
							<h1 class="text-theme fw-500">Contact</h1>
						</div>
						<ul class="custom breadcrumb">
							<li><a href="home.jsp">Home</a></li>
							<li class="active">Contact</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Subheader -->
	<!-- Start Contact top -->
	<section class="section-padding bg-light-white contact-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="contact-info-box mb-md-40">
						<i class="flaticon-placeholder"></i>
						<h6 class="text-theme fw-600">
							Near Polic Station. Ilol,Himmatnagar<br>Gujarat, India
						</h6>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="contact-info-box mb-md-40">
						<i class="flaticon-telephone-1"></i>
						<h6 class="text-theme fw-600">
							<a href="#" class="text-theme">+91 8980331323</a><br>
							Mon-Sat 9:00am-5:00pm
						</h6>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="contact-info-box">
						<i class="flaticon-envelope"></i>
						<h6 class="text-theme fw-600">
							<a href="#" class="text-theme">vaghmohammadsajid8@gmail.com</a><br>
							24 X 7 online support
						</h6>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Contact top -->

	<!-- Start Contact form -->
	<section class="section-padding bg-light-white listing-detail"
		style="margin-top: -110px;">
		<div class="container">

			<div class="row">
				<div class="col-lg-12">
					<div class="description-box bg-custom-white padding-20">
						<div class="content-box">
							<div class="section-header">
								<div class="section-heading">
									<h5 class="text-custom-blue">Get In</h5>
									<h3 class="text-theme fw-700">Touch</h3>
								</div>
								<div class="section-description">
									<p class="text-light-white">Any Query? Please Contact Me</p>
								</div>
							</div>
							<div class="head">
								<h5 class="text-theme fw-600 no-margin">Write A Message</h5>
							</div>
							<h5 id="msg"
								class="d-flex flex-column align-items-center justify-content-center"></h5>

							<div class="contact-form">
								<div class="form">
									<form action="MessageServlet" method="POST" id="myform">
										<input value="<%=session.getAttribute("user_id")%>"
											name="noteId" type="hidden">

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<input type="text" name="MessageName" placeholder="Name"
														class="form-control form-control-custom" required>
												</div>
												<div class="form-group">
													<input type="email" name="MessageEmail" placeholder="Email"
														class="form-control form-control-custom" required>
												</div>
												<div class="form-group">
													<input type="number" name="MessageNumber"
														class="form-control form-control-custom"
														placeholder="phone number" required>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<textarea name="message"
														class="form-control form-control-custom"
														placeholder="Message" required cols="30" rows="10"></textarea>
												</div>
											</div>
											<div class="col-12">
												<div class="form-footer">
													<div class="condition">
														<span class="fs-14 ">By sending, you agree to <a
															href="#" class="text-dark-grey">Terms of Use</a> and <a
															href="#" class="text-dark-grey">Privacy Policy</a></span>
													</div>
													<button type="submit"
														class="btn-first btn-submit btn-height">submit
														message</button>
												</div>
											</div>
										</div>
									</form>
								</div>
								<div class="status" style="margin-top: 10px; display: none;">
									<div class="d-flex justify-content-center">
										<div class="spinner-border">
											<span class="visually-hidden"></span>
										</div>
										<h5 style="font-size: 22px;">please wait...</h5>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- End Contact form -->

	<!-- Start Contact map -->
	<div class="contact-map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58495.65026784384!2d72.93295320997639!3d23.60511685386616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395db8e92b638e41%3A0x688e3d55d247a6c1!2sHimatnagar%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1668571617331!5m2!1sen!2sin"
			width="600" height="450" style="border: 0;" allowfullscreen=""
			loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
	<!-- End Contact map -->

	<!-- Start footer -->
	<%@include file="footer.jsp"%>
	<!-- End footer -->

	<!-- start all js file -->
	<%@include file="all_js_file.jsp"%>
	<!-- End all js file -->

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
					url : "MessageServlet",
					data : f,
					type : 'POST',
					success : function(data, textStatus, jqXHR) {
						console.log(data);
						console.log("Success...")
						$(".status").hide();
						$(".form").show();
						if (data.trim() == 'success') {
							$('#msg').html("Message Sent Successfully !!")
							$('#msg').addClass('text-success')

						} else if (data.trim() == 'Messagesentalready') {
							$('#msg').html("Message Sent Already!!")
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

</body>
</html>
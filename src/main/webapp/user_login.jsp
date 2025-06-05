<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Rose Valley | Login Page</title>

<!-- start all css file -->
<%@include file="all_css_file.jsp"%>
<!-- End all css file -->

</head>
<body
	style="background-image: url('flower images/banner-6.jpg'); background-size: cover; background-attachment: fixed;">
	<div class="container">
		<section
			class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center">

			<div class="row justify-content-center">
				<div
					class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center"
					style="background-color: white; box-shadow: 0.5px 0.5px 4.5px 0 black; border: 2px solid black; border-radius: 65px 0px 65px 0px; width: 1240px;">

					<div class="login-register">
						<div class="d-flex justify-content-center py-4">
							<a href="#"
								class="d-flex flex-column align-items-center justify-content-center"
								style="width: 60px; height: 60px;"> <img
								src="flower images/roseLogo1.jpg"
								style="border-radius: 70px 70px 70px 70px; margin-right: 7px;"
								alt="">
							</a>
							<h4 style="margin-top: 11px; color: #6bb00b;">Login Page</h4>
						</div>
						<!-- End Logo -->
						<div class="tab-content padding-20">
							<div class="tab-pane active">
								<form action="LoginServlet" method="post">
									<div class="row">
										<div class="col-12">
											<div class="form-group">
												<div
													class="d-flex flex-column align-items-center justify-content-center"
													style="font-size: large;">Your Email</div>
												<input type="email" name="email"
													class="form-control form-control-custom" required>
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<div
													class="d-flex flex-column align-items-center justify-content-center"
													style="font-size: large;">Password</div>
												<input type="password" name="pass"
													class="form-control form-control-custom" required>
											</div>
										</div>
										<div class="col-12">
											<button type="submit"
												class="btn-first btn-submit full-width btn-height">submit</button>
										</div>
									</div>
								</form>
								<div class="social-links text-center mb-xl-20">
									<p>
										Any have An Account? <a href="user_register.jsp"
											style="font-size: 17px;">Register Now</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>
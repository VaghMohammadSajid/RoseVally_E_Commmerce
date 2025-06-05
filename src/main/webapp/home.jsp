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

<title>Rose Valley | Home Us</title>

<!-- start all css file -->
<%@include file="all_css_file.jsp"%>
<!-- End all css file -->

</head>

<body class="loader">

	<%@include file="navbar.jsp"%>

	<!-- Start Banner -->
	<div class="simple-banner">
		<div class="main-slider style-2-slider">
			<div class="slide-item">
				<img src="flower images/banner-6.jpg" class="image-fit" alt="slider">
			</div>
			<div class="slide-item">
				<img src="flower images/banner-1.jpg" class="image-fit" alt="slider">
			</div>
			<div class="slide-item">
				<img src="flower images/banner-2.jpg" class="image-fit" alt="slider">
			</div>
			<div class="slide-item">
				<img src="flower images/banner-3.jpg" class="image-fit" alt="slider">
			</div>
		</div>
	</div>
	<!-- End Banner -->

	<!-- Start About us -->
	<section class="section-padding about-us">
		<div class="container">
			<div class="row">
				<div class="col-xl-7 col-lg-6 align-self-center mb-md-80">
					<div class="about-left-side">
						<div class="section-header">
							<div class="section-heading">
								<h5 class="text-custom-blue">About</h5>
								<h3 class="text-theme fw-700">Our Story</h3>
							</div>
						</div>
						<div class="about-desc">
							<p class="text-light-white">
								<span style="color: green; font-size: 15px;">‘Rose Valley
									Shop’</span> is the leading manufacturer of a high-quality artificial
								flower that has washable material as well as custom wholesale
								artificial flowers all over India. Artificial flowers are
								imitations of natural flowering plants used for commercial or
								residential decoration. You can use artificial flowers for
								decoration at weddings, anniversaries, mandaps, tents, events,
								festivals, etc.
							</p>
							<p class="text-light-white">
								<span style="color: green; font-size: 15px;">‘Rose Valley
									’</span> Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Libero quia consequuntur, quaerat quam nam sapiente, ea pariatur
								eveniet vero ipsa voluptate, expedita perferendis optio?
							</p>
						</div>
						<div class="about-list">
							<ul class="custom">
								<li class="text-theme fs-14"><span class="fas fa-check"></span>
									Personalized Service.</li>
								<li class="text-theme fs-14"><span class="fas fa-check"></span>
									24/7 support.</li>
								<li class="text-theme fs-14"><span class="fas fa-check"></span>
									Financing made easy.</li>
								<li class="text-theme fs-14"><span class="fas fa-check"></span>
									Trusted by thousands.</li>
							</ul>
						</div>
						<a href="#" class="btn-first btn-submit">Read More</a>
					</div>
				</div>
				<div class="col-xl-5 col-lg-6">
					<div class="about-right-side">
						<img
							src="flower images/products/Grand-Crazy In Love Red Roses banquet.jpg"
							class="img-fluid full-width" alt="about">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End About us -->

	<!-- Start Recent Garden -->
	<section class="masonary-gallery-sec bg-light-white">
		<div class="container-fluid no-padding">
			<div class="row magnific-gallery">
				<div class="col-lg-6">
					<div class="full-height masonary-box bg-custom-blue p-relative">
						<div class="masonary-text transform-center">
							<div class="masonary-text-wrapper">
								<div class="icon-box">
									<img src="flower images/frontgal.jpg"
										style="border-radius: 15px 0px 15px 0px;" class="image-fit"
										alt="img">
								</div>
								<div class="text-box">
									<h3 class="text-custom-white">Your Beautiful Function , if
										you can dream it, we can design and build it!</h3>
									<a href="https://www.instagram.com/"
										class="text-custom-white fs-14"><i
										class="fab fa-instagram mr-2"></i> @rose Valley</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="video-box full-height">
						<div class="video_wrapper video_wrapper_full js-videoWrapper">

							<div class="videoPoster js-videoPoster">
								<img src="flower images/frontgal6.jpg"
									class="img-fluid full-width" alt="#">
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="masonary-item p-relative">
						<a href="#" class="popup"> <img
							src="flower images/frontgal4.jpg" class="image-fit" alt="img">
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-8 col-sm-6">
					<div class="masonary-item p-relative">
						<a href="#" class="popup"> <img
							src="flower images/frontgal2.jpg" class="image-fit" alt="img">
						</a>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="masonary-item p-relative">
						<a href="assets/images/homepage-1/garden1.jpg" class="popup">
							<img src="flower images/frontgal7.jpg" class="image-fit"
							alt="img">
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-8 col-sm-6">
					<div class="masonary-item p-relative">
						<a href="#" class="popup"> <img
							src="flower images/frontgal5.jpg" class=" image-fit" alt="img">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Recent Garden -->

	<!-- Start partners -->
	<%@include file="partner.jsp"%>
	<!-- End partners -->

	<!-- Start Footer -->
	<%@include file="footer.jsp"%>
	<!-- End Footer -->

	<!-- start all js file -->
	<%@include file="all_js_file.jsp"%>
	<!-- End all js file -->

</body>

</html>
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

<title>Rose Valley | Profile Us</title>

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
							<h1 class="text-theme fw-500">Profile</h1>
						</div>
						<ul class="custom breadcrumb">
							<li><a href="home.jsp">Home</a></li>
							<li class="active">Profile</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Subheader -->

	<!-- Start Faqs -->
	<div class="section-padding ">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="broker-img animate-img mb-sm-80">
						<a href="#"> <img src="flower images/mo-sajid-1.jpg"
							style="border-radius: 25px 0px 25px 0px;"
							class="img-fluid image-fit" alt="broker-img">
						</a>
					</div>
				</div>
				<div class="col-lg-8 col-md-6 align-self-center">
					<div class="broker-details">
						<div class="broker-head">
							<h4>
								<a href="#" class="text-theme"> Vagh Mohammad Sajid</a>
							</h4>
							<h5 class="text-light-white">Admin</h5>
							<p class="text-light-white mb-xl-20">My name is vagh mohammad
								sajid. I was working in a nursery for the last 10 years. But now
								I have opened my own shop and I will always provide satisfactory
								service to my clients.</p>
						</div>
						<div class="broker-contact">
							<ul class="custom">
								<li class="fs-14 text-custom-blue"><i
									class="fas fa-map-marker-alt"></i> <a href="#"
									class="text-theme">383220 Ilol , Himmatnagar</a></li>
								<li class="fs-14 text-custom-blue"><i
									class="fas fa-phone-alt"></i> <a href="tel:" class="text-theme">+91
										8980331323</a></li>
							</ul>
						</div>
						<div class="broker-social">
							<ul class="custom">
								<li><a href="https://www.facebook.com/"
									class="text-custom-white"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a href="https://www.instagram.com/"
									class="text-custom-white"><i class="fab fa-instagram"></i></a>
								</li>
								<li><a
									href="https://in.pinterest.com/search/pins/?q=garden&rs=typed"
									class="text-custom-white"><i class="fab fa-pinterest-p"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Faqs -->

	<!-- Start related post -->
	<section class="section-padding bg-light-white">
		<div class="container">
			<div class="section-header">
				<div class="section-heading">
					<h5 class="text-custom-blue">Related</h5>
					<h3 class="text-theme fw-700">Post</h3>
				</div>
				<div class="section-description">
					<p class="text-light-white">Here are pictures of the place I'm
						working on...</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="swiper-container recent-property-slider">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="property-grid-box">
									<div class="property-grid-wrapper">
										<div class="property-img animate-img">
											<a href="#"> <img src="flower images/hotel decorate.jpg"
												class="img-fluid full-width" alt="#">
											</a>
										</div>
										<div class="property-grid-caption padding-20">
											<h5>
												<a href="#" class="text-theme">Hotel Function Decorate</a>
											</h5>
											<div class="price mb-xl-20 fs-16 fw-700 text-custom-blue">₹
												2,00,000</div>
										</div>
										<div class="property-grid-footer">
											<a href="#" class="text-theme fs-14 fw-600">Read More <span
												class="flaticon-right-arrow ml-1"></span></a>
											<div class="ratings">
												<span class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-light-white"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-light-white"><i
													class="fas fa-star"></i></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="property-grid-box">
									<div class="property-grid-wrapper">
										<div class="property-img animate-img">
											<a href="#"> <img
												src="flower images/bedroom decorate.jpg"
												class="img-fluid full-width" alt="#">
											</a>
										</div>
										<div class="property-grid-caption padding-20">
											<h5>
												<a href="#" class="text-theme">Bedroom Decorate</a>
											</h5>
											<div class="price mb-xl-20 fs-16 fw-700 text-custom-blue">₹
												900</div>
										</div>
										<div class="property-grid-footer">
											<a href="#" class="text-theme fs-14 fw-600">Read More <span
												class="flaticon-right-arrow ml-1"></span></a>
											<div class="ratings">
												<span class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-light-white"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-light-white"><i
													class="fas fa-star"></i></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="property-grid-box">
									<div class="property-grid-wrapper">
										<div class="property-img animate-img">
											<a href="#"> <img
												src="flower images/Wedding decorate.jpg"
												class="img-fluid full-width" alt="#">
											</a>
										</div>
										<div class="property-grid-caption padding-20">
											<h5>
												<a href="#" class="text-theme">Marraige Function
													Decorate</a>
											</h5>
											<div class="price mb-xl-20 fs-16 fw-700 text-custom-blue">₹
												1700</div>
										</div>
										<div class="property-grid-footer">
											<a href="#" class="text-theme fs-14 fw-600">Read More <span
												class="flaticon-right-arrow ml-1"></span></a>
											<div class="ratings">
												<span class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-light-white"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-light-white"><i
													class="fas fa-star"></i></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="property-grid-box">
									<div class="property-grid-wrapper">
										<div class="property-img animate-img">
											<a href="#"> <img
												src="flower images/function decorate.jpg"
												class="img-fluid full-width" alt="#">
											</a>
										</div>
										<div class="property-grid-caption padding-20">
											<h5>
												<a href="#" class="text-theme">Function Stage Decorate</a>
											</h5>
											<div class="price mb-xl-20 fs-16 fw-700 text-custom-blue">₹
												1,00,000</div>
										</div>
										<div class="property-grid-footer">
											<a href="#" class="text-theme fs-14 fw-600">Read More <span
												class="flaticon-right-arrow ml-1"></span></a>
											<div class="ratings">
												<span class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-custom-yellow"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-light-white"><i
													class="fas fa-star"></i></span> <span
													class="fs-16 text-light-white"><i
													class="fas fa-star"></i></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- Add Arrows -->
					<div class="slider-btn">
						<div class="recent-button-next swiper-button-next">
							<span class="flaticon-arrow-1"></span>
						</div>
						<div class="recent-button-prev swiper-button-prev">
							<span class="flaticon-left"></span>
						</div>
					</div>
					<!-- Add Pagination -->
					<div class="recent-pagination swiper-pagination"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- End related post -->

	<!-- Start Team -->
	<section class="section-padding bg-agents agent-sec">
		<div class="container">
			<div class="section-header">
				<div class="section-heading">
					<h4 class="text-custom-blue">My</h4>
					<h3 class="text-custom-white fw-700">Team</h3>
				</div>
				<div class="section-description">
					<p class="text-custom-white">Lorem Ipsum is simply dummy text
						of the printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="agent-item mb-md-40">
						<div class="agent-img animate-img mb-xl-20">
							<a href="#"> <img src="flower images/customer-A.jpg"
								class="rounded-circle full-width" alt="image">
							</a>
						</div>
						<div class="agent-content">
							<h6>
								<a href="#" class="text-theme">Mahesh Patel</a>
							</h6>
							<p class="text-light-white">Real Estate Agent</p>
							<ul class="custom">
								<li><a href="https://www.facebook.com/"
									class="text-custom-white"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a href="https://www.instagram.com/"
									class="text-custom-white"><i class="fab fa-instagram"></i></a>
								</li>
								<li><a
									href="https://in.pinterest.com/search/pins/?q=garden&rs=typed"
									class="text-custom-white"><i class="fab fa-pinterest-p"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="agent-item mb-md-40">
						<div class="agent-img animate-img mb-xl-20">
							<a href="#"> <img src="flower images/customer-D.jpg"
								class="rounded-circle full-width" alt="image">
							</a>
						</div>
						<div class="agent-content">
							<h6>
								<a href="#" class="text-theme">Saniya Mirza</a>
							</h6>
							<p class="text-light-white">Sales Executive</p>
							<ul class="custom">
								<li><a href="https://www.facebook.com/"
									class="text-custom-white"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a href="https://www.instagram.com/"
									class="text-custom-white"><i class="fab fa-instagram"></i></a>
								</li>
								<li><a
									href="https://in.pinterest.com/search/pins/?q=garden&rs=typed"
									class="text-custom-white"><i class="fab fa-pinterest-p"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="agent-item mb-sm-40">
						<div class="agent-img animate-img mb-xl-20">
							<a href="#"> <img src="flower images/customer-B.jpg"
								class="rounded-circle full-width" alt="image">
							</a>
						</div>
						<div class="agent-content">
							<h6>
								<a href="#" class="text-theme">Rohit Ambaani</a>
							</h6>
							<p class="text-light-white">Real Estate Broker</p>
							<ul class="custom">
								<li><a href="https://www.facebook.com/"
									class="text-custom-white"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a href="https://www.instagram.com/"
									class="text-custom-white"><i class="fab fa-instagram"></i></a>
								</li>
								<li><a
									href="https://in.pinterest.com/search/pins/?q=garden&rs=typed"
									class="text-custom-white"><i class="fab fa-pinterest-p"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="agent-item">
						<div class="agent-img animate-img mb-xl-20">
							<a href="#"> <img src="flower images/customer-C.jpg"
								class="rounded-circle full-width" alt="image">
							</a>
						</div>
						<div class="agent-content">
							<h6>
								<a href="#" class="text-theme">Alya Sharma</a>
							</h6>
							<p class="text-light-white">Sales Executive</p>
							<ul class="custom">
								<li><a href="https://www.facebook.com/"
									class="text-custom-white"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a href="https://www.instagram.com/"
									class="text-custom-white"><i class="fab fa-instagram"></i></a>
								</li>
								<li><a
									href="https://in.pinterest.com/search/pins/?q=garden&rs=typed"
									class="text-custom-white"><i class="fab fa-pinterest-p"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Team -->

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
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
<title>Rose Valley | About Us</title>

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
							<h1 class="text-theme fw-500">About Us</h1>
						</div>
						<ul class="custom breadcrumb">
							<li><a href="home.jsp">Home</a></li>
							<li class="active">About Us</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Subheader -->

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
							<p class="text-light-white">Lorem ipsum, dolor sit amet
								consectetur adipisicing elit. Non velit rem labore ipsam
								laboriosam id cupiditate error est illo vero quia minima enim,
								doloribus cum sequi soluta temporibus accusantium! Hic?</p>
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
						<img src="flower images/about.jpg" class="img-fluid full-width"
							alt="about">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End About us -->

	<!-- Start Why choose us / testimonials-->
	<section class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-5">
					<div class="why-choose-box mb-md-80">
						<div class="section-header">
							<div class="section-heading">
								<h5 class="text-custom-blue">Why</h5>
								<h3 class="text-theme fw-700">Choose Us</h3>
							</div>
							<div class="section-description">
								<p class="text-light-white">We will provide you all the
									services given below.</p>
							</div>
						</div>
						<div id="accordion" class="custom-accordion">
							<div class="card">
								<div class="card-header" id="headingOne">
									<button class="collapsebtn" data-toggle="collapse"
										data-target="#collapseOne">Personalized Service.</button>
								</div>
								<div id="collapseOne" class="collapse show"
									data-parent="#accordion">
									<div class="card-body">
										<p class="text-theme no-margin">We are responsible for
											protecting your flower plants for 10 days after planting
											them.</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="headingTwo">
									<button class="collapsebtn collapsed" data-toggle="collapse"
										data-target="#collapseTwo">24/7 support.</button>
								</div>
								<div id="collapseTwo" class="collapse" data-parent="#accordion">
									<div class="card-body">
										<p class="text-theme no-margin">If the customer has any
											problem, they can visit our website and call or mail us
											anytime.</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="headingThree">
									<button class="collapsebtn collapsed" data-toggle="collapse"
										data-target="#collapseThree">Financing made easy.</button>
								</div>
								<div id="collapseThree" class="collapse"
									data-parent="#accordion">
									<div class="card-body">
										<p class="text-theme no-margin">We also offer online
											payment and cash on delivery option to the customer.</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="headingFour">
									<button class="collapsebtn collapsed" data-toggle="collapse"
										data-target="#collapseFour">Trusted by thousands.</button>
								</div>
								<div id="collapseFour" class="collapse" data-parent="#accordion">
									<div class="card-body">
										<p class="text-theme no-margin">With good reviews from
											millions of customers, you can trust us.</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="headingFive">
									<button class="collapsebtn collapsed" data-toggle="collapse"
										data-target="#collapseFive">Best Price Ever</button>
								</div>
								<div id="collapseFive" class="collapse" data-parent="#accordion">
									<div class="card-body">
										<p class="text-theme no-margin">Each of us We offer the
											product at a low price.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-lg-7">
					<div class="testimonial-box">
						<div class="section-header-right">
							<div class="section-heading">
								<h5 class="text-custom-blue">Our</h5>
								<h3 class="text-theme fw-700">Customer Review</h3>
							</div>
							<div class="section-description">
								<!-- <p class="text-light-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p> -->

							</div>
						</div>
						<div class="testimonials-inner testimonial-slider">
							<div class="testimonials-item">
								<div class="testimonials-img animate-img">
									<img src="flower images/burak deniz.jpg" class="rounded-circle"
										alt="testimonials">
								</div>
								<div class="testimonials-content">
									<div class="testimonials-text">
										<div class="content">
											<i class="fas fa-quote-left"></i>
											<p class="text-theme">A group of us wanted to express our
												true feelings and not just send another arrangement. I saw
												the broken heart design and I knew that was perfect.
												Everyone that contributed Loved it.</p>
										</div>
										<cite class="name text-dark-grey fw-600 float-right">-
											Burak Deniz</cite>
									</div>
								</div>
							</div>
							<div class="testimonials-item">
								<div class="testimonials-img animate-img">
									<img src="flower images/sharukhan.jpg" class="rounded-circle"
										alt="testimonials">
								</div>
								<div class="testimonials-content">
									<div class="testimonials-text">
										<div class="content">
											<i class="fas fa-quote-left"></i>
											<p class="text-theme">Thank you So much. I found you on
												the internet and used you to send flowers to the same person
												last week.</p>
										</div>
										<cite class="name text-dark-grey fw-600 float-right">-
											Sharukhan</cite>
									</div>
								</div>
							</div>
							<div class="testimonials-item">
								<div class="testimonials-img animate-img">
									<img src="flower images/virat kohli.jpg" class="rounded-circle"
										alt="testimonials">
								</div>
								<div class="testimonials-content">
									<div class="testimonials-text">
										<div class="content">
											<i class="fas fa-quote-left"></i>
											<p class="text-theme">I can't tell you how many
												compliments the bouquets receive! You flowers are
												Outrageously wonderful.</p>
										</div>
										<cite class="name text-dark-grey fw-600 float-right">-
											Virat Kohli</cite>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Why choose us / testimonials -->

	<!-- Start best sales -->
	<%@include file="sale.jsp"%>
	<!-- End best sales -->

	<!-- Start partners -->
	<%@include file="partner.jsp"%>

	<!-- End partners -->
	<%@include file="footer.jsp"%>

	<!-- start all js file -->
	<%@include file="all_js_file.jsp"%>
	<!-- End all js file -->

</body>
</html>
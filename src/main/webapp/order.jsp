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

<title>Rose Valley | Order Us</title>

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
							<h1 class="text-theme fw-500">Order</h1>
						</div>
						<ul class="custom breadcrumb">
							<li><a href="home.php">Home</a></li>
							<li class="active">Order</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Subheader -->

	<!-- Start Listing Details -->
	<div class="shop-full-width section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shop-topbar-wrapper">
						<div class="product-sorting-wrapper">
							<div class="product-shorting shorting-style mb-4">
								<div class="listing-top-heading mb-xl-20">
									<div class="col-md-12 d-flex justify-content-center">
										<h2 style="color: #1f5510;">Orders Placed</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shop-product-wrapper res-xl res-lg res-md">
						<div class="tab-content">
							<div id="grid" class="tab-pane fade show active">
								<div class="row">
									<?php
                                    $select_orders = mysqli_query($conn, "SELECT * FROM `orders` WHERE user_id = '$user_id'") or die('query failed');
                                    if (mysqli_num_rows($select_orders) > 0) {
                                        while ($fetch_orders = mysqli_fetch_assoc($select_orders)) {
                                    ?>
									<form action="" method="POST"
										class="col-lg-6 col-md-6 col-sm-6" style="padding: 10px;">
										<div class="container">
											<div class="property-grid-box">
												<div class="property-grid-wrapper">
													<div class="down-content property-grid-caption padding-20"
														style="background-color: whitesmoke;">
														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-4 label">
																<h5 style="color: #217e08;">Your Name :</h5>
															</div>
															<div class="col-lg-6 col-md-6">
																<h6 style="color: #606060;">
																	<?php echo $fetch_orders['name']; ?>
																</h6>
															</div>
														</div>

														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-46 label">
																<h5 style="color: #217e08;">Number :</h5>
															</div>
															<div class="col-lg-6 col-md-6">
																<h6 style="color: #606060;">
																	<?php echo $fetch_orders['number']; ?>
																</h6>
															</div>
														</div>

														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-4 label">
																<h5 style="color: #217e08;">Email :</h5>
															</div>
															<div class="col-lg-6  col-md-6">
																<h6 style="color: #606060;">
																	<?php echo $fetch_orders['email']; ?>
																</h6>
															</div>
														</div>

														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-4 label">
																<h5 style="color: #217e08;">Address :</h5>
															</div>
															<div class="col-lg-6  col-md-6">
																<h6 style="color: #606060;">
																	<?php echo $fetch_orders['address']; ?>
																</h6>
															</div>
														</div>

														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-4 label ">
																<h5 style="color: #217e08;">Placed On :</h5>
															</div>
															<div class="col-lg-6  col-md-6">
																<h6 style="color: #606060;">
																	<?php echo $fetch_orders['placed_on']; ?>
																</h6>
															</div>
														</div>

														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-4 label">
																<h5 style="color: #217e08;">Method :</h5>
															</div>
															<div class="col-lg-6 col-md-6">
																<h6 style="color: #606060;">
																	<?php echo $fetch_orders['method']; ?>
																</h6>
															</div>
														</div>

														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-4 label">
																<h5 style="color: #217e08;">Your Orders :</h5>
															</div>
															<div class="col-lg-6 col-md-6">
																<h6 style="color: #606060;">
																	<?php echo $fetch_orders['total_products']; ?>
																</h6>
															</div>
														</div>

														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-4 label">
																<h5 style="color: #217e08;">Total Price:</h5>
															</div>
															<div class="col-lg-6  col-md-6">
																<h6 class="text-custom-blue">
																	<?php echo '₹' . $fetch_orders['total_price']; ?>
																</h6>
															</div>
														</div>

														<div class="row" style="font-size: 15px;">
															<div
																class="col-lg-4 d-flex justify-content-center col-md-4 label">
																<h5 style="color: #217e08;">Status :</h5>
															</div>
															<div class="col-lg-6 col-md-6">
																<span
																	style="color:
                                                                      <?php if ($fetch_orders['payment_status'] == 'pending') {
                                                                            echo 'tomato';
                                                                        } else {
                                                                            echo 'green';
                                                                        } ?>">
																	<?php echo $fetch_orders['payment_status']; ?>
																</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</form>
									<?php
                                        }
                                    } else {
                                        echo '<h4 class="col-md-12 d-flex justify-content-center" style="color:#818781;">No Orders Placed Yet...!</h4>';
                                    }
                                    ?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Listing Details -->

	<!-- Start Footer -->
	<%@include file="footer.jsp"%>
	<!-- End Footer -->

	<!-- start all js file -->
	<%@include file="all_js_file.jsp"%>
	<!-- End all js file -->

</body>
</html>
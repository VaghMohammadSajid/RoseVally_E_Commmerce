<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Query"%>

<%
Session s = FactoryProvider.getSession();

try {
	Long userId = (Long) session.getAttribute("user_id");

	if (userId == null) {
		response.sendRedirect("user_login.jsp");
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
							<h1 class="text-theme fw-500">Wishlist</h1>
						</div>
						<ul class="custom breadcrumb">
							<li><a href="home.php">Home</a></li>
							<li class="active">Wishlist</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Subheader -->

	<!-- Start About us -->
	<section class="section-padding bg-light-white listing-detail">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shop-topbar-wrapper">
						<div class="product-sorting-wrapper">
							<div class="product-shorting shorting-style mb-4">
								<div class="listing-top-heading mb-xl-20">
									<div class="col-md-12 d-flex justify-content-center">
										<h2 style="color: #1f5510;">Products Added</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%
			Double gran_total = 0.0;
			String hql = "FROM Wishlist user_id=:userId";
			Query<Wishlist> querywish = s.createQuery(hql, Wishlist.class);
			querywish.setParameter("userId", userId);

			List<Wishlist> wishlist = querywish.list();
			if (wishlist != null) {

				for (Wishlist item : wishlist) {
					Long itemId = item.getWid();
					String productName = item.getWname();
					Double productPrice = item.getWprice();
					String productImage = item.getPimage();
					int productQauntity = item.getWquantity();
			%>
			<div class="row">
				<div class="col-lg-12">
					<div class="d-flex justify-content-center">
						<form action="ProductServlet" method="POST">
							<div class="listing-detail-heading mb-xl-20">
								<h3 class="no-margin text-theme">
									<%=productName%>
								</h3>
							</div>
							<div class="image-sec-table padding-20 mb-xl-20">
								<div class="row d-flex justify-content-center">
									<div class="col-lg-6">
										<div class="image-sec-table">
											<div class="row d-flex justify-content-center">
												<div class="col-lg-12">
													<div class="property-details-box gardenz-description">
														<div class="price-box mb-xl-20">
															<span class="fs-14 fw-600 btn-first btn-submit"> <a
																href="WishListItemDelete?delete=<%=itemId %>"
																class="fas fa-times"
																onclick="return confirm('delete this from wishlist?');"></a>
															</span>
															<div class="fs-14 fw-600 btn-first btn-submit"
																class="ratings">
																<a
																	href="wishlist.jsp?pid=<%=itemId %>"
																	class="fas fa-eye fs-16"> </a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="images-wrapper mb-md-80">
											<div class="slide-item">
												<a href="#" class="popup"> <img
													src="uploaded_img/<%=productImage%>" alt=""
													class="w-100 h-100 object-cover img-fluid image-fit">
												</a>
											</div>

										</div>
									</div>
									<div class="col-lg-6">
										<div class="property-details-box gardenz-description">
											<div class="property-details-wrap">
												<div class="price-box mb-xl-20">
													<span class="price text-custom-blue"> ₹<%=productPrice%>
													</span>
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
												<div class="details">
													<p class="text-light-white">Lorem ipsum, dolor sit amet
														consectetur adipisicing elit. Hic magni omnis accusantium
														sit vel nostrum iste aspernatur exercitationem maxime
														esse.</p>
													<div class="product-content">
														<h5>Product Info</h5>
														<ul class="no-padding">
															<li><span>Product Name :</span> <%=productName%></li>
															<li><span>Rank :</span> Genus</li>
															<li><span>Family :</span> Roses</li>
															<li><span>Kingdom :</span> Plantae</li>
														</ul>
													</div>
													<div class="quantity">
														<h5>Quantity</h5>
														<div class="input-box">
															<input type="number" name="product_quantity" value="1"
																min="0">
														</div>
														<label> Availability: <span>In Stock</span>
														</label>

													</div>
													<div class="cart-button">
														<div>
															<input type="submit" class="btn-first btn-submit"
																value="add to cart" name="add_to_cart" class="btn">
														</div>
														<div class="social-media">

															<ul class="custom social-media">
																<span>Share : </span>
																<li><a href="https://www.facebook.com/"
																	class="text-custom-white"><i
																		class="fab fa-facebook-f"></i></a></li>

																<li><a href="https://www.instagram.com/"
																	class="text-custom-white"><i
																		class="fab fa-instagram"></i></a></li>
																<li><a href="https://in.pinterest.com/"
																	class="text-custom-white"><i
																		class="fab fa-pinterest-p"></i></a></li>
															</ul>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" name="product_id" value="<%=itemId%>">
							<input type="hidden" name="product_name" value="<%=productName%>">
							<input type="hidden" name="product_price"
								value="<%=productPrice%>"> <input type="hidden"
								name="product_image" value="<%=productImage%>">
						</form>
					</div>
				</div>
			</div>
			<section class="section-padding bg-light-white listing-detail">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="description-box bg-custom-white padding-20">
								<div class="content-box">
									<div class="head">
										<h4
											class="text-theme fw-1000 no-margin d-flex justify-content-center"
											style="color: #1f5510;">Delete All This Current Poduct</h4>
									</div>
									<div class="contact-form">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<div class="product-content">
														<h5>
															<label class="d-flex justify-content-center">grand
																total : <span class="no-margin text-custom-blue">₹<%=gran_total%>/-
															</span>
															</label>

														</h5>
													</div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-footer">
													<div class="condition">
														<span class="fs-14 "> <a href="shop.jsp"
															class="text-theme option-btn btn-first btn-submit btn-height d-flex justify-content-center"
															style="margin-right: 2px; width: 200px;">continue
																shopping</a>
														</span>
													</div>
													<a href="WishListItemDelete?delete_all"
														class="text-theme option-btn btn-first btn-submit btn-height d-flex justify-content-center <?php echo ($grand_total > 1) ? '' : 'disabled' ?>"
														onclick="return confirm('delete all from wishlist?');"
														style="margin-right: 2px; width: 200px;">delete all</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<%
			gran_total += productPrice;
			}
			} else {
			out.write("<h4>Your Wishlist is empty...!</h4>");
			}
			%>
		</div>
	</section>
	<!-- End About us -->

	<!-- End partners -->
	<%@include file="footer.jsp"%>

	<!-- start all js file -->
	<%@include file="all_js_file.jsp"%>
	<!-- End all js file -->

</body>
</html>
<%
} catch (Exception e) {
e.printStackTrace();
} finally {
s.close();
}
%>
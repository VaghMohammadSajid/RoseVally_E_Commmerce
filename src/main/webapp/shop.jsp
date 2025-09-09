<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.Tables.Products"%>
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

<title>Rose Valley | Shop Us</title>

<!-- start all css file -->
<%@include file="all_css_file.jsp" %>
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
							<h1 class="text-theme fw-500">Shop</h1>
						</div>
						<ul class="custom breadcrumb">
							<li><a href="home.jsp">Home</a></li>
							<li class="active">Shop</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Subheader -->
	<!-- Start Shop Full Width -->
	<div class="shop-full-width section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shop-topbar-wrapper">
						<div class="product-sorting-wrapper">
							<div class="product-shorting shorting-style mb-4">
								<div class="listing-top-heading mb-xl-20">
									<div class="col-md-12 d-flex justify-content-center">
										<h2 style="color: #1f5510;">Our Products</h2>
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

									<%
                                        Session hibSession = null;
                                        try {
                                            hibSession = FactoryProvider.getFactory().openSession();

                                            // HQL query to get products (limit 100)
                                            Query<Products> query = hibSession.createQuery("FROM Products", Products.class);
                                            query.setMaxResults(100);
                                            List<Products> productsList = query.getResultList();

                                            if (!productsList.isEmpty()) {
                                                for (Products fetch_products : productsList) {
                                    %>
                                    <div class="row">
                                                    <form action="" method="POST"
                                                        class="col-lg-3 col-md-6 col-sm-6" style="padding: 10px 0">
                                                        <div class="container">
                                                            <div class="property-grid-box">
                                                                <div class="property-grid-wrapper">
                                                                    <div class="property-img animate-img">
                                                                        <a href="shop.jsp?pid=<%= fetch_products.getId() %>">
                                                                            <input type="hidden" name="product_id"
                                                                                value="<%= fetch_products.getId() %>">
                                                                            <img class="image"
                                                                                src="<%= (fetch_products.getPimage() != null && !fetch_products.getPimage().isEmpty())
                                                                                ? "admin/uploaded_img/" + fetch_products.getPimage()
                                                                                : "admin/upload_img/404-img.png" %>"
                                                                                alt="product image" style="height: 300px;"
                                                                                class="w-100 object-cover">
                                                                        </a>
                                                                    </div>
                                                                    <div class="down-content property-grid-caption padding-20">
                                                                        <h5>
                                                                            <div class="text-theme">
                                                                                <%= fetch_products.getPname() %>
                                                                                <input type="hidden" name="Pname"
                                                                                    value="<%= fetch_products.getPname() %>">
                                                                            </div>
                                                                        </h5>
                                                                        <div class="price mb-xl-20 fs-16 fw-700 text-custom-blue">
                                                                            ₹<%= fetch_products.getPrice() %>
                                                                            <input type="hidden" name="Pprice"
                                                                                value="<%= fetch_products.getPrice() %>">
                                                                        </div>

                                                                        <div class="price mb-xl-20 fs-16 fw-700 text-custom-blue">
                                                                            <input type="number" name="product_quantity" value="1"
                                                                                min="0" class="qty">
                                                                        </div>
                                                                    </div>
                                                                    <input type="hidden" name="product_image"
                                                                        value="<%= fetch_products.getPimage() %>">

                                                                    <div class="property-grid-footer fs-14 fw-600 d-flex justify-content-center">
                                                                        <input type="submit" value="Wishlist" name="add_to_wishlist"
                                                                            class="text-theme option-btn btn-first btn-submit btn-height d-flex justify-content-center"
                                                                            style="margin-right: 2px; width: 150px;">
                                                                        <input type="submit" value="Cart" name="add_to_cart"
                                                                            class="text-theme fs-14 fw-600 btn-first btn-submit btn-height d-flex justify-content-center"
                                                                            style="margin-left: 1px; width: 150px;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                    </div>
                                    <%
                                                } // end for
                                            } else {
                                    %>
                                                <h4 class="col-md-12 d-flex justify-content-center" style="color:#818781;">No Products Added Yet...!</h4>
                                    <%
                                            }
                                        } catch(Exception e) {
                                            e.printStackTrace();
                                        } finally {
                                            if(hibSession != null) hibSession.close();
                                        }
                                    %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Shop Full Width -->

	<!-- Start Footer -->
    	<%@include file="footer.jsp"%>
    <!-- End Footer -->

    <!-- start all js file -->
        <%@include file="all_js_file.jsp"%>
    <!-- End all js file -->

</body>
</html>
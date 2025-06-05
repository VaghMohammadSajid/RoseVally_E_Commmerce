<!-- login register -->
<%@page import="com.Tables.User"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>

<div class="modal fade" id="login-register">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-body">
				<div class="login-register">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#login">Login</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#register">Register</a></li>
					</ul>
					<div class="tab-content padding-20">
						<div class="tab-pane active" id="login">
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
								<p class="fs-12 mb-xl-20">Connect with Social Networks</p>
								<ul class="custom">
									<li><a href="https://www.facebook.com/"
										class="text-custom-white"><i class="fab fa-facebook-f"></i></a>
									</li>

									<li><a href="https://www.instagram.com/"
										class="text-custom-white"><i class="fab fa-instagram"></i></a>
									</li>
									<li><a href="https://in.pinterest.com/"
										class="text-custom-white"><i class="fab fa-pinterest-p"></i></a>
									</li>
								</ul>
							</div>
							<div class="decleration">
								By creating an account you are accepting our <a href="#"
									class="text-custom-blue">Terms & Conditions</a>
							</div>
						</div>
						<div class="tab-pane" id="register">

							<form action="RegisterServlet" method="post">
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<div
												class="d-flex flex-column align-items-center justify-content-center"
												style="font-size: large;">Your Name</div>
											<input type="text" name="name"
												class="form-control form-control-custom" required>
										</div>
									</div>
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
								<p class="fs-12 mb-xl-20">Connect with Social Networks</p>
								<ul class="custom">
									<li><a href="https://www.facebook.com/"
										class="text-custom-white"><i class="fab fa-facebook-f"></i></a>
									</li>

									<li><a href="https://www.instagram.com/"
										class="text-custom-white"><i class="fab fa-instagram"></i></a>
									</li>
									<li><a href="https://in.pinterest.com/"
										class="text-custom-white"><i class="fab fa-pinterest-p"></i></a>
									</li>
								</ul>
							</div>
							<div class="decleration">
								By creating an account you are accepting our <a href="#"
									class="text-custom-blue">Terms & Conditions</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--End login register -->

<!--Start logout register -->

<div class="modal fade" id="logout">
	<div class="modal-dialog modal-dialog-centered">

		<div class="modal-content">
			<div class="modal-body">
				<div class="logout">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#logout"></a></li>
					</ul>
					<div class="tab-content padding-20"
						style="background-color: whitesmoke;">
						<div class="tab-pane active" id="logout">
							<div class="d-flex justify-content-center py-4">
								<a href="#" class="logo d-flex align-items-center"> <img
									style="border-radius: 10px;" src="flower images/userLogo1.jpg"
									alt=""> <span class="d-none d-lg-block"></span>
								</a>
							</div>
							<!-- End Logo -->
							<div class="col-12">
								<div class="form-group  ">
									<p class="form-label" style="font-size: large;">
										username : <span class="text-custom-blue"><%=session.getAttribute("user_name")%>
										</span>
									</p>

									<p style="font-size: large;">
										email : <span class="text-custom-blue"><%=session.getAttribute("user_email")%>
										</span>
									</p>

									<a href="user_logout.jsp"
										class="btn-first btn-submit full-width btn-height delete-btn">logout</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--End logout register -->

<!-- Start Header -->

<!-- topbar -->
<div class="topbar bg-custom-black">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="left-side ">
					<ul class="custom">
						<li><a href="#" class="text-custom-white" data-toggle="modal"
							data-target="#login-register"><i
								class="fas fa-user text-custom-blue"></i> Login & Register</a></li>
						<li><a href="mailto:info@domain.com"
							class="text-custom-white"><i
								class="fas fa-envelope text-custom-blue"></i>
								vaghmohammadsajid8@gmail.com</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4">
				<div class="right-side">
					<ul class="custom">
						<li><a href="https://www.facebook.com/"
							class="text-custom-white"><i class="fab fa-facebook-f"></i></a></li>

						<li><a href="https://www.instagram.com/"
							class="text-custom-white"><i class="fab fa-instagram"></i></a></li>
						<li><a href="https://in.pinterest.com/"
							class="text-custom-white"><i class="fab fa-pinterest-p"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- topbar -->

<!-- navigation -->
<header class="menu-style">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="header">
					<div class="logo" style="width: 57px; height: 55px;">
						<a href="#"> <img src="flower images/roseLogo1.jpg"
							style="border-radius: 15px 0px 15px 0px;"
							class="img-fluid image-fit" alt="Logo">
						</a>
					</div>
					<div class="right-side">
						<div class="navigation">
							<div class="logo" style="width: 57px; height: 55px;">
								<a href="#"> <img src="flower images/roseLogo1.jpg"
									style="border-radius: 15px 0px 15px 0px;"
									class="img-fluid image-fit" alt="Logo">
								</a>
							</div>
							<nav>
								<ul class="custom main-menu">
									<li class="menu-item "><a href="home.jsp"
										class="text-theme fs-14">Home</a></li>
									<li class="menu-item"><a href="about.jsp"
										class="text-theme fs-14">About Us</a></li>
									<li class="menu-item"><a href="profile.jsp"
										class="text-theme fs-14">Profile</a></li>

									<li class="menu-item menu-item-has-children"><a href="#"
										class="text-theme fs-14">Pages</a>
										<ul class="custom sub-menu">
											<li class="menu-item"><a href="shop.jsp"
												class="text-theme">Shop</a></li>
											<li class="menu-item"><a href="order.jsp"
												class="text-theme">Order</a></li>
										</ul></li>

									<li class="menu-item"><a href="contact.jsp"
										class="text-theme fs-14">Contact</a></li>
									<li class="menu-item menu-item-has-children">
										<ul class="custom sub-menu d-flex justify-content-center">
											<li class="menu-item"><a href="#" class="text-theme"
												data-toggle="modal" data-target="#logout"><i
													class="fa fa-power-off" aria-hidden="true"></i> </a></li>
											<li class="menu-item">
												<?php
                                                $select_wishlist_count = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE user_id = '$user_id'") or die('query failed');
                                                $wishlist_num_rows = mysqli_num_rows($select_wishlist_count);
                                                ?> <a
												href="wishlist.php" class="text-theme"><i
													class="fas fa-heart">[<?php echo $wishlist_num_rows; ?>]
												</i></a>
											</li>
											<li class="menu-item">
												<?php
                                                $select_cart_count = mysqli_query($conn, "SELECT * FROM `cart` WHERE user_id = '$user_id'") or die('query failed');
                                                $cart_num_rows = mysqli_num_rows($select_cart_count);
                                                ?> <a href="cart.php"
												class="text-theme"><i class="fas fa-shopping-cart">[<?php echo $cart_num_rows; ?>]
												</i></a>
											</li>

										</ul>
									</li>

								</ul>

							</nav>
						</div>
						<div class="hamburger-menu">
							<div class="menu-btn">
								<span></span> <span></span> <span></span>
							</div>
						</div>
						<div class="cta-btn">
							<div class="cta-text">
								<a href="#"
									class="text-custom-black addlisting-btn btn-border  fs-14 fw-600 btn-first btn-submit"
									style="border: 1px solid #6bb00b; border-radius: 24px 24px 24px 24px; font-size: 20px;"
									data-toggle="modal" data-target="#logout"><i
									class="fa fa-power-off" aria-hidden="true"></i></a>

								<?php
                                $select_wishlist_count = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE user_id = '$user_id'") or die('query failed');
                                $wishlist_num_rows = mysqli_num_rows($select_wishlist_count);
                                ?>

								<a href="wishlist.php"
									class="text-custom-black addlisting-btn btn-border  fs-14 fw-600 btn-first btn-submit"
									style="border: 1px solid #6bb00b; border-radius: 24px 24px 24px 24px; font-size: 20px;"><i
									class="fas fa-heart">[<?php echo $wishlist_num_rows; ?>]
								</i></a>

								<?php
                                $select_cart_count = mysqli_query($conn, "SELECT * FROM `cart` WHERE user_id = '$user_id'") or die('query failed');
                                $cart_num_rows = mysqli_num_rows($select_cart_count);
                                ?>

								<a href="cart.php"
									class="text-custom-black addlisting-btn btn-border fs-14 fw-600 btn-first btn-submit"
									style="border: 1px solid #6bb00b; border-radius: 24px 24px 24px 24px; font-size: 20px;"><i
									class="fas fa-shopping-cart">[<?php echo $cart_num_rows; ?>]
								</i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- navigation -->

<!-- End Header -->
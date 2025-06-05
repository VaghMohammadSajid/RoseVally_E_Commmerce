<!-- Start best sales -->
<section class="section-padding">
    <div class="container">
        <div class="section-header">
            <div class="section-heading">
                <h5 class="text-custom-blue">Our</h5>
                <h3 class="text-theme fw-700">For Sale</h3>
            </div>
            <div class="section-description">
                <p class="text-light-white">“Every flower is a soul blossoming in nature.”</p>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="swiper-container featured-property-slider">
                    <div class="swiper-wrapper">
                        <?php
                        $select_products = "SELECT * FROM products LIMIT 100";
                        $result = mysqli_query($conn, $select_products) or die("Query Failed");
                        if (mysqli_num_rows($result) > 0) {
                            while ($fetch_products = mysqli_fetch_assoc($result)) {
                        ?>
                                <div class="swiper-slide">
                                    <div class="property-grid-box" style="max-width: 300px;">
                                        <div class="property-grid-wrapper">
                                            <div class="property-img animate-img">
                                                <a href="shop.php?pid=<?php echo $fetch_products['id']; ?>">
                                                    <input type="hidden" name="product_id" value="<?php echo $fetch_products['id']; ?>">
                                                    <img class="image" src="admin/uploaded_img/<?php echo $fetch_products['image']; ?>" alt="product image" style="height: 300px;" class="w-100 object-cover">
                                                </a>
                                            </div>
                                            <div class="down-content property-grid-caption padding-20">
                                                <h5><a href="shop.php?pid=<?php echo $fetch_products['id']; ?>" class="text-theme"><?php echo $fetch_products['name']; ?></a></h5>
                                                <div class="price mb-xl-20 fs-16 fw-700 text-custom-blue">₹<?php echo $fetch_products['price']; ?>
                                                </div>
                                            </div>
                                            <div class="property-grid-footer">
                                                <a href="#" class="text-theme fs-14 fw-600">Read More <span class="flaticon-right-arrow ml-1"></span></a>
                                                <div class="ratings">
                                                    <span class="fs-16 text-custom-yellow"><i class="fas fa-star"></i></span>
                                                    <span class="fs-16 text-custom-yellow"><i class="fas fa-star"></i></span>
                                                    <span class="fs-16 text-custom-yellow"><i class="fas fa-star"></i></span>
                                                    <span class="fs-16 text-light-white"><i class="fas fa-star"></i></span>
                                                    <span class="fs-16 text-light-white"><i class="fas fa-star"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        <?php
                            }
                        } else {
                            echo '<h4 class="col-md-12 d-flex justify-content-center" style="color:#818781;">No Products Added Yet...!</h4>';
                        }
                        ?>
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="slider-btn">
                    <div class="featured-button-next swiper-button-next">
                        <span class="flaticon-arrow-1"></span>
                    </div>
                    <div class="featured-button-prev swiper-button-prev">
                        <span class="flaticon-left"></span>
                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="featured-pagination swiper-pagination"></div>
            </div>
        </div>
    </div>
</section>
<!-- End best sales -->
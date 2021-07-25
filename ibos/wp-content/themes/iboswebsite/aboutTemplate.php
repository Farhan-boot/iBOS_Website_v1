<?php 
	/*
	Template Name: About-Template
	*/
?>
<?php get_header(); ?>


  <!-- Welcome banner section -->
    <section class="bg-blue">
        <div class="welcome-banner ab-welcome-banner">
            <div class="container">
                <div class="images">
                    <img class="left-image-1 mobile-d-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/about/left-image-1.png" alt="iBOS" />
                    <img class="left-image-2 mobile-d-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/about/left-image-2.png" alt="iBOS" />
                    <img class="middle-image" src="<?php echo get_template_directory_uri(); ?>/assets/images/about/middle-image.png" alt="iBOS" />
                    <img class="right-image-1 mobile-d-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/about/right-image-1.png" alt="iBOS" />
                    <img class="right-image-2 mobile-d-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/about/right-image-2.png" alt="iBOS" />
                </div>

                <div class="shapes">
                    <div class="shape shape-1"></div>
                    <div class="shape shape-2"></div>
                    <div class="shape shape-3"></div>
                    <div class="shape shape-4"></div>
                    <div class="shape shape-5"></div>
                </div>
                <div class="welcome-section-title">
                    <h2 class="welcome-heading">
                        iBOS (An Akij Company)
                    </h2>
                    <p class="welcome-para">
                        iBOS Software is the fastest growing software company in Bangladesh. The team of talented
                        developers, designers and marketers are working hard to bring you innovative solutions for your
                        business needs.
                    </p>
                    <p class="welcome-para">
                        We have a wide range of products that can help you manage and grow your business better: ERP,
                        Accounting app, HR software, e-commerce solutions, mobile app development et
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- hm-article section -->
    <section>
        <div class="hm-article-section hm-article-section-reverse about-hm-article">
            <div class="container">
                <div class="row single-hm-article-row">
                    <div class="col-xl-6 order-2 offset-xl-6">
                        <div class="single-hm-article">
                            <div class="single-hm-article-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/akij.png" alt="iBOS">
                            </div>
                            <div class="single-hm-article-txt">
                                <div>
                                    <a href="#" class="single-hm-article-title">
                                        iBOS - Company History (where did it all start) 
                                    </a>
                                </div>
                                <p class="single-hm-article-post">
                                    iBOS Software is established in February 2020 and has been growing rapidly since
                                    then. The company started with a handful of talented developers, designers, and
                                    marketers working together on the first iBOS product - an ERP solution for
                                    small-medium-sized organizations. With clients from various industries across
                                    Bangladesh, it was clear we were onto something big.
                                </p>
                                <p class="single-hm-article-post">
                                    In 2015, iBOS expanded its team by hiring more software engineers to work on new
                                    innovative solutions such as accounting app, HR software and eCommerce solutions
                                    etc.
                                </p>
                                <p class="single-hm-article-post">
                                    We have now grown into one of the fastest-growing technology companies in Bangladesh
                                    that provides products/solutions for every business need ranging from SME to
                                    Enterprise.
                                </p>
                                <p class="single-hm-article-post">
                                    Our clientele list has expanded exponentially with clients from all over the world
                                    including US, UK, Canada etc
                                </p>
                                <div>
                                    <a href="#" class="readmore">Read More...</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- team section -->
    <section>
        <div class="team-section">
            <div class="container">
                <div class="section-title section-title460">
                    <h2 class="section-title">Who Are We as a Team</h2>
                    <p class="section-para">
                        The best place for developers, engineers and tech marketers.
                    </p>
                </div>
                <div class="team-section-content">
			<?php 
		         $teamMember = new WP_Query(array(
		         'post_type' =>'Our_Team_Member',
		         'posts_per_page' =>'8',
		         ));
		      ?>
		      <?php rewind_posts(); ?>
                    <div class="row">
           <?php if(have_posts()) : while($teamMember->have_posts()) : $teamMember->the_post(); ?>
            <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                        <div class="col-xl-3 col-lg-4 col-6">
                            <div class="card single-team-item">
                                <div class="single-team-item-text">
                                    <h3><?php echo wp_trim_words( get_the_title(), 15, '...' );?></h3>
                                    <h4><?php echo wp_trim_words( get_the_content(), 25, '...' );?></h4>
                                </div>
                                <div class="single-team-item-img">
                                    <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS" />
                                </div>
                            </div>
                        </div>
              <?php endwhile; endif; ?>
                     <!--
                        <div class="col-xl-3 col-lg-4 col-6">
                            <div class="card single-team-item">
                                <div class="single-team-item-text">
                                    <h3>Leo Barber</h3>
                                    <h4>Marketing Officer</h4>
                                </div>
                                <div class="single-team-item-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team/user02.png" alt="iBOS" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-6">
                            <div class="card single-team-item">
                                <div class="single-team-item-text">
                                    <h3>Leonard Torres</h3>
                                    <h4>Graphics Designer</h4>
                                </div>
                                <div class="single-team-item-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team/user03.png" alt="iBOS" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-6">
                            <div class="card single-team-item">
                                <div class="single-team-item-text">
                                    <h3>Jon Daniels</h3>
                                    <h4>Marketing Officer</h4>
                                </div>
                                <div class="single-team-item-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team/user04.png" alt="iBOS" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-6">
                            <div class="card single-team-item">
                                <div class="single-team-item-text">
                                    <h3>Elsie Gross</h3>
                                    <h4>Co-Founder</h4>
                                </div>
                                <div class="single-team-item-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team/user05.png" alt="iBOS" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-6">
                            <div class="card single-team-item">
                                <div class="single-team-item-text">
                                    <h3>Leo Barber</h3>
                                    <h4>Marketing Officer</h4>
                                </div>
                                <div class="single-team-item-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team/user06.png" alt="iBOS" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-6">
                            <div class="card single-team-item">
                                <div class="single-team-item-text">
                                    <h3>Leonard Torres</h3>
                                    <h4>Graphics Designer</h4>
                                </div>
                                <div class="single-team-item-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team/user07.png" alt="iBOS" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-6">
                            <div class="card single-team-item">
                                <div class="single-team-item-text">
                                    <h3>Jon Daniels</h3>
                                    <h4>Marketing Officer</h4>
                                </div>
                                <div class="single-team-item-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team/user08.png" alt="iBOS" />
                                </div>
                            </div>
                        </div>
					-->

                    </div>


		 			<?php 
		                $teamMember = new WP_Query(array(
		                'post_type' =>'Our_Team_Member',
		                'posts_per_page' =>'-1',
		                ));
		            ?>
		           <?php rewind_posts(); ?>
	                    <div class="row toggle-team-members">
			        <?php if(have_posts()) : while($teamMember->have_posts()) : $teamMember->the_post(); ?>
		            <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
					<?php 
					    $postNumber++;
					    if ($postNumber>=9){
					?>
	                        <div class="col-xl-3 col-lg-4 col-6">
	                            <div class="card single-team-item">
	                                <div class="single-team-item-text">
	                                    <h3><?php echo wp_trim_words( get_the_title(), 15, '...' );?></h3>
	                                    <h4><?php echo wp_trim_words( get_the_content(), 25, '...' );?></h4>
	                                </div>
	                                <div class="single-team-item-img">
	                                    <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS" />
	                                </div>
	                            </div>
	                        </div>

 			 <?php } ?>
	         <?php endwhile; endif; ?>
	                    </div>
                </div>
            </div>
            <div class="team-section-btn">
                <button type="button" class="btn btn-footer btn-seemore">See more members</button>
                <button type="button" class="btn btn-footer btn-seeless">See less</button>
            </div>
        </div>
    </section>

    <!-- feature section -->
    <section>
        <div class="feature-section">
            <div class="container">
                <div class="section-title section-title636">
                    <h2 class="section-title">
                        Why Should You Use Our Software Instead of Someone Else's
                    </h2>
                </div>
                <div class="feature-card-content">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-feature-item card">
                                <div class="single-feature-image">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/feature/payment.svg" alt="iBOS">
                                </div>
                                <div class="single-feature-text">
                                    <h3>
                                        <a href="#">
                                            Pay Us Monthly or One Time, Up to You 
                                        </a>
                                    </h3>
                                    <p>
                                        Our business model will be flexible and we don’t want to force you into anything
                                        that will not work for your team or budget. We are going to offer monthly
                                        billing as well as one time payments so that everyone can find what works best
                                        for them!
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-feature-item card">
                                <div class="single-feature-image">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/feature/customer-service.svg" alt="iBOS">
                                </div>
                                <div class="single-feature-text">
                                    <h3>
                                        <a href="#">
                                            Our Customer Service is Unparalleled 
                                        </a>
                                    </h3>
                                    <p>
                                        Our staff are available 24/hours and they can assist with anything you need so
                                        you never have to worry about being left out on something important (iBOS has
                                        been known for solving problems that other companies couldn't).
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-feature-item card">
                                <div class="single-feature-image">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/feature/no-learning-carve.svg" alt="iBOS">
                                </div>
                                <div class="single-feature-text">
                                    <h3>
                                        <a href="#">
                                            There's no Learning Curve Here  
                                        </a>
                                    </h3>
                                    <p>
                                        It doesn't matter if this is your first time using a computer or if you're
                                        someone who knows how computers work inside and out, there won't be much
                                        difference between them because iBOS makes everything easy
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>




    <!-- client section -->
    <section>
        <div class="client-section">
            <div class="container">
                <div class="section-title section-title355">
                    <h2 class="section-title">Our Customers</h2>
                    <p class="section-para">
                        The customer service is unmatched, always available to help 24/hours and with any 
                    </p>
                </div>

           <?php 
                $ourclient = new WP_Query(array(
                'post_type' =>'Our_Client',
                'posts_per_page' =>'4'
                ));
            ?>
            <?php rewind_posts(); ?>

                <div class="client-section-content client-slider owl-carousel">
            <?php if(have_posts()) : while($ourclient->have_posts()) : $ourclient->the_post(); ?>
            <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>

                    <div class="card single-client-item">
                        <div class="single-client-item-img">
                            <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                        </div>
                    </div>
            <?php endwhile; endif; ?>
			<!--
                    <div class="card single-client-item">
                        <div class="single-client-item-img">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-poly-fiber.svg" alt="iBOS">
                        </div>
                    </div>
                    <div class="card single-client-item">
                        <div class="single-client-item-img">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-food.svg" alt="iBOS">
                        </div>
                    </div>
                    <div class="card single-client-item">
                        <div class="single-client-item-img">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-cement.svg" alt="iBOS">
                        </div>
                    </div>
                    <div class="card single-client-item">
                        <div class="single-client-item-img">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-shipping.svg" alt="iBOS">
                        </div>
                    </div>
				-->
                </div>


            </div>
        </div>
    </section>


    <!-- product-icon section -->
    <section>
        <div class="product-card-section about-software-product">
            <div class="container">
                <div class="section-title section-title636">
                    <h2 class="section-title">Software Products That we Offer</h2>
                    <p class="section-para">
                        iBOS offers a range of different software products, from the most basic to ones that are more
                        complex. The customer can find what works best for them!
                    </p>
                    <p class="section-para">
                        We offer competitive pricing along with low overhead meaning these savings will passed on to our
                        customers who deserve nothing less but the best experience possible.
                    </p>
                </div>
                <div class="product-card-section-content ab-product-card-section-content bg-ghost-white">
                    <div class="row">
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/accounting.svg" alt="iBOS Accounting Software">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">Accounting</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/hr-software.svg" alt="iBOS HR Software">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">HR Software </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/vat-software.svg" alt="iBOS VAT Software">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">VAT Software</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/billing.svg" alt="iBOS Billing">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">Billing</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/pos.svg" alt="iBOS Retail ERP with POS">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">Retail ERP with POS </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/enterprise-erp.svg" alt="iBOS Enterprise ERP">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">Enterprise ERP</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/pms.svg" alt="iBOS PMS">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">PMS</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/ecommerce.svg" alt="iBOS Ecommerce & Inventory ">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">Ecommerce & Inventory </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-6">
                            <div class="single-product-card-list product-card-list bg-default-white">
                                <a href="#" class="single-product-card-list-overlay"></a>
                                <div class="single-product-card-list-icon">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/rtm.svg" alt="iBOS Route To Market (RTM)">
                                </div>
                                <div class="single-product-card-list-txt">
                                    <a href="#" class="product-topics">Route To Market (RTM)</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- contact-form section -->
    <section>
        <div class="conatact-form-section about-contact-form">
            <div class="container">
                <div class="section-title section-title634">
                    <h2 class="section-title">How to Get Started with Us </h2>
                    <p class="section-para">
                        To get started, all it takes is filling out and submitting this form. The staff at iBOS wil be
                        in touch soon to give more information about what we offer and how to do business with us.
                    </p>
                    <p class="section-para">
                        If you're looking for an easy start with a software company that provides the best customer
                        services around, then iBOS is perfect for you!
                    </p>
                </div>
                <div class="contact-form-content ab-contact-form-content">
     <!--
                    <form action="#" class="contact-form">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <input type="text" class="form-control contact-input-form" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <input type="text" class="form-control contact-input-form" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div class="search-box-content">
                                        <select class="form-control contact-select-form">
                                            <option value="#">Softwear</option>
                                            <option value="#">Softwear</option>
                                            <option value="#">Softwear</option>
                                            <option value="#">Softwear</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea class="form-control contact-textarea-form"
                                        placeholder="Message"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="contact-button-section">
                            <div class="contact-submit-btn">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-footer">
                                        Submit
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
       -->



  <div class="container" style="overflow: hidden;">
        <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/shell.js"></script>
        <script>
          hbspt.forms.create({
            region: "na1",
            portalId: "20280711",
            formId: "3bfb247b-acae-4e11-8c22-5c55450c32fa"
        });
        </script>
  </div>


                </div>
            </div>
        </div>
    </section>







<?php get_footer(); ?>










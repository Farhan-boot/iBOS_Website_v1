<!-- product-icon section -->
   
  <section>
        <div class="product-card-section upper-move">
            <div class="container">
                <div class="product-card-section-content bg-ghost-white">
                    <ul class="product-card-list">
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/accounting.svg" alt="iBOS Accounting Software">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">Accounting</a>
                            </div>
                        </li>
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/hr-software.svg" alt="iBOS HR Software">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">HR Software </a>
                            </div>
                        </li>
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/vat-software.svg" alt="iBOS VAT Software">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">VAT Software</a>
                            </div>
                        </li>
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/billing.svg" alt="iBOS Billing">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">Billing</a>
                            </div>
                        </li>
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/pos.svg" alt="iBOS Retail ERP with POS">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">Retail ERP with POS </a>
                            </div>
                        </li>
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/enterprise-erp.svg" alt="iBOS Enterprise ERP">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">Enterprise ERP</a>
                            </div>
                        </li>
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/pms.svg" alt="iBOS PMS">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">PMS</a>
                            </div>
                        </li>
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/ecommerce.svg" alt="iBOS Ecommerce & Inventory ">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">Ecommerce & Inventory </a>
                            </div>
                        </li>
                        <li class="single-product-card-list bg-default-white">
                            <div class="single-product-card-list-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/products/rtm.svg" alt="iBOS Route To Market (RTM)">
                            </div>
                            <div class="single-product-card-list-txt">
                                <a class="product-topics">Route To Market (RTM)</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- client section -->

  <section>
        <div class="client-section">
            <div class="container">
                <div class="section-title section-title460">
                    <h2 class="section-title">Center of Our Universe</h2>
                    <p class="section-para">
                        See how businessess like yours found solutions with iBOS
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
                            <img src="assets/images/partner/akij-poly-fiber.svg" alt="iBOS">
                        </div>
                    </div>
                    <div class="card single-client-item">
                        <div class="single-client-item-img">
                            <img src="assets/images/partner/akij-food.svg" alt="iBOS">
                        </div>
                    </div>
                    <div class="card single-client-item">
                        <div class="single-client-item-img">
                            <img src="assets/images/partner/akij-cement.svg" alt="iBOS">
                        </div>
                    </div>
                    <div class="card single-client-item">
                        <div class="single-client-item-img">
                            <img src="assets/images/partner/akij-shipping.svg" alt="iBOS">
                        </div>
                    </div>
                -->
                </div>
            </div>
        </div>
    </section>



    <!-- hm-article section -->
    <section>
        <div class="hm-article-section">
            <div class="container">
                  <?php 
                        $mainslider = new WP_Query(array(
                        'post_type' =>'Blog_Section_One',
                        'posts_per_page' =>'1'
                        ));
                    ?>
                        <?php rewind_posts(); ?>
                        <?php if(have_posts()) : while($mainslider->have_posts()) : $mainslider->the_post(); ?>
                        <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                                <div class="row single-hm-article-row">
                                <div class="col-lg-6 order-lg-1 order-2">
                                    <div class="single-hm-article">
                                        <div class="single-hm-article-txt">
                                            <div>
                                                <a href="<?php the_permalink();?>" class="single-hm-article-title">
                                                    <?php echo wp_trim_words( get_the_title(), 8, '...' );?>
                                                </a>
                                            </div>
                                            <p class="single-hm-article-post">
                                                 <?php echo wp_trim_words( get_the_content(), 49, '...' );?>
                                            </p>
                                            <div>
                                                <a href="<?php the_permalink();?>" class="readmore">Read More...</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 order-lg-2 order-1 hm-img-responsive">
                                    <div class="single-hm-article">
                                        <div class="single-hm-article-img single-hm-article-left-img">
                                            <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                            </div>
                <?php endwhile; endif; ?>
            </div>
        </div>
    </section>

    <!-- hm-article section -->
    <section>
        <div class="hm-article-section hm-article-section-reverse">
            <div class="container">
                   <?php 
                        $mainslider = new WP_Query(array(
                        'post_type' =>'Blog_Section_Two',
                        'posts_per_page' =>'1'
                        ));
                    ?>
                <?php rewind_posts(); ?>
                <?php if(have_posts()) : while($mainslider->have_posts()) : $mainslider->the_post(); ?>
                <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                <div class="row single-hm-article-row">
                    <div class="col-xl-6 hm-img-responsive">
                        <div class="single-hm-article">
                            <div class="single-hm-article-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/akij.png" alt="iBOS">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="single-hm-article">
                            <div class="single-hm-article-txt">
                                <div>
                                    <a href="<?php the_permalink();?>" class="single-hm-article-title">
                                         <?php echo wp_trim_words( get_the_title(), 13, '...' );?>
                                    </a>
                                </div>
                                <h3 class="single-hm-article-sub-title">
                                    A concern of Akij
                                </h3>
                                <p class="single-hm-article-post">
                                   <?php echo wp_trim_words( get_the_content(), 90, '...' );?>
                                </p>
                                <div>
                                    <a href="<?php the_permalink();?>" class="readmore">Read More...</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <?php endwhile; endif; ?>
            </div>
        </div>
    </section>

    <!-- service section -->

  <section>
        <div class="service">
            <div class="container">
                <div class="section-title section-title362">
                    <h2 class="section-title">Our Services</h2>
                    <p class="section-para">
                        Start building the great software/ app you've always wanted to build.
                    </p>
                </div>
                <div class="service-content">
                    <div class="row">
                        <div class="col-xl-3 col-md-4 col-6">
                            <div class="card single-service-card">
                                <div class="single-service-card-icon">
                                    <img class="card-icon-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/service/website.svg" alt="iBOS">
                                </div>
                                <div class="single-service-card-txt">
                                    <h3 class="card-title">website</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-4 col-6">
                            <div class="card single-service-card">
                                <div class="single-service-card-icon">
                                    <img class="card-icon-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/service/ecommerce.svg" alt="iBOS">
                                </div>
                                <div class="single-service-card-txt">
                                    <h3 class="card-title">Ecommerce</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-4 col-6">
                            <div class="card single-service-card">
                                <div class="single-service-card-icon">
                                    <img class="card-icon-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/service/mobile-app.svg" alt="iBOS">
                                </div>
                                <div class="single-service-card-txt">
                                    <h3 class="card-title">Mobile App</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-4 col-6">
                            <div class="card single-service-card">
                                <div class="single-service-card-icon">
                                    <img class="card-icon-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/service/custom-app.svg" alt="iBOS">
                                </div>
                                <div class="single-service-card-txt">
                                    <h3 class="card-title">Custom App</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-4 col-6">
                            <div class="card single-service-card">
                                <div class="single-service-card-icon">
                                    <img class="card-icon-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/service/enterprise-security.svg"
                                        alt="iBOS">
                                </div>
                                <div class="single-service-card-txt">
                                    <h3 class="card-title">Enterprise Security </h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-4 col-6">
                            <div class="card single-service-card">
                                <div class="single-service-card-icon">
                                    <img class="card-icon-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/service/salesforce.svg" alt="iBOS">
                                </div>
                                <div class="single-service-card-txt">
                                    <h3 class="card-title">Salesforce</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-4 col-6">
                            <div class="card single-service-card">
                                <div class="single-service-card-icon">
                                    <img class="card-icon-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/service/shopify.svg" alt="iBOS">
                                </div>
                                <div class="single-service-card-txt">
                                    <h3 class="card-title">Shopify</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-4 col-6">
                            <div class="card single-service-card">
                                <div class="single-service-card-icon">
                                    <img class="card-icon-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/service/odo.svg" alt="iBOS">
                                </div>
                                <div class="single-service-card-txt">
                                    <h3 class="card-title">Oddo</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- customer-testomonial section -->


   <section>
        <div class="customer-testimonial">
            <div class="container">
                <div class="section-title section-title462">
                    <h2 class="section-title">Our Amazing Customers Share Their Stories</h2>
                </div>
                <div class="testimonial-content">
                    <ul class="testimonial-list testimonial-slider">
                        <li class="single-testimonial-list">
                            <div class="single-testimonial-list-content">
                                <div class="testimonial-user-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/testimonial-user.png" alt="iBOS">
                                </div>
                                <div class="testimonial-user-txt">
                                    <h3 class="name">Shorif Hosain</h3>
                                    <h4 class="outlet">Maer Doa Enterprise</h4>
                                    <p class="speace">
                                        “They have every software to manage my business. I can even maintain most of the
                                        things from my mobile. I don't need extra manpower anymore. Lastly, very easy to
                                        calculate my profit through their accounting software.”
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="single-testimonial-list">
                            <div class="single-testimonial-list-content">
                                <div class="testimonial-user-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/testimonial-user.png" alt="iBOS">
                                </div>
                                <div class="testimonial-user-txt">
                                    <h3 class="name">Shorif Hosain</h3>
                                    <h4 class="outlet">Maer Doa Enterprise</h4>
                                    <p class="speace">
                                        “They have every software to manage my business. I can even maintain most of the
                                        things from my mobile. I don't need extra manpower anymore. Lastly, very easy to
                                        calculate my profit through their accounting software.”
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <!--
                    <div class="testimonial-btn-section">
                        <a href="#" class="btn btn-footer">See all testimonials</a>
                    </div>
                    -->
                </div>
            </div>
        </div>
    </section>



    <!-- serve-section -->
    <section>
        <div class="serve-section">
            <div class="container">
                <div class="section-title section-title371">
                    <h2 class="section-title">Industries We Serve</h2>
                </div>
                <div class="serve-section-content">
                    <ul class="serve-list serve-slider">
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/sme.svg" alt="iBOS SME">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>SME</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/healthcare.svg" alt="iBOS Fintech">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Healthcare</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/fintech.svg" alt="iBOS Fintech">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Fintech </a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/fmcg.svg" alt="iBOS FMCG">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>FMCG</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/rmg.svg" alt="iBOS RMG">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>RMG</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/ecomerce.svg" alt="iBOS E-commerce">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>E-commerce</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/real-estate.svg" alt="iBOS Real Estate">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Real Estate</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/automotive.svg" alt="iBOS Automotive">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Automotive</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/startup.svg" alt="iBOS Startup">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Startup</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/education.svg" alt="iBOS Education">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Education</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/non-profit.svg" alt="iBOS Non-Profit">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Non-Profit</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/retail.svg" alt="iBOS Retail">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Retail</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/manufacturing.svg" alt="iBOS Manufacturing">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Manufacturing</a>
                            </div>
                        </li>
                        <li class="single-serve-item">
                            <div class="single-serve-item-icon">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industries-icon/miscellaneous.svg" alt="iBOS Miscellaneous">
                            </div>
                            <div class="single-serve-item-txt">
                                <a>Miscellaneous</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- technologies section -->
    <section>
        <div class="technologies-section">
            <div class="container">
                <div class="section-title section-title533">
                    <h2 class="section-title">Technologies We Work With </h2>
                    <p class="section-para">
                        Name the technology you are comfortable with and we will work around it. 
                    </p>
                </div>
                <?php 
                    $technologies = new WP_Query(array(
                    'post_type' =>'Our_Technologies',
                    'posts_per_page' =>'-1'
                    ));
                ?>

                <div class="technologies-content ">
                    <ul class="technologies-list technologies-slider owl-carousel">
                <?php rewind_posts(); ?>
                <?php if(have_posts()) : while($technologies->have_posts()) : $technologies->the_post(); ?>
                <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                            </div>
                        </li>
                <?php endwhile; endif; ?>
                <!--
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/technologies/net.svg" alt="iBOS">
                            </div>
                        </li>
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/technologies/flutter.svg" alt="iBOS">
                            </div>
                        </li>
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/technologies/nginx.svg" alt="iBOS">
                            </div>
                        </li>
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/technologies/python.svg" alt="iBOS">
                            </div>
                        </li>
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/technologies/kubernetis.svg" alt="iBOS">
                            </div>
                        </li>
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/technologies/docker.svg" alt="iBOS">
                            </div>
                        </li>
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/technologies/c.svg" alt="iBOS">
                            </div>
                        </li>
                        <li class="single-technologies-list">
                            <div class="single-technologies-list-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/technologies/net.svg" alt="iBOS">
                            </div>
                        </li>
                -->
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- book-demo section -->

<section>
        <div class="book-demo-section">
            <div class="container">
                <div class="book-demo-section-content">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="single-book-demo-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/book-demo.png" alt="iBOS">
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="single-book-demo-wrapper">
                                <div class="single-book-demo-txt">
                                    <h3>Book a Demo For Any of Our Products </h3>
                                    <p>
                                        See the software you want in action with a 30 minutes meeting. We can also
                                        answer
                                        any questions you may have.
                                    </p>
                                    <div>
                                        <a href="https://ibosbd.wpengine.com/book-demo/" class="btn btn-footer">Book a Demo</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php 
    /*
    Template Name: Blog-Template
    */
?>

 <?php get_template_part('custom_header/gray-header');?>

    <!-- Welcome banner section -->
    <section>
        <div class="welcome-banner blog-welcome-banner bg-pale-gray">
            <div class="container">
                <div class="welcome-section-title">
                    <h2 class="welcome-heading">
                        Software Company Blog
                    </h2>
                    <p class="welcome-para">
                        This is not the same old software blog. You’ll find fresh ideas to grow your business in technology product development and innovation.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- blog gallary section -->
    <!--
    <section>
        <div class="blog-gallary-section">
            <div class="container">
                <div class="blog-gallary-content">

                    <ul class="filter-menu">
                        <li class="blog-section-category-button active" data-filter="all">
                            All
                        </li>
                        <li class="blog-section-category-button" data-filter="software">
                            Software
                        </li>
                        <li class="blog-section-category-button" data-filter="enterprise-erp">
                            Enterprise ERP
                        </li>
                        <li class="blog-section-category-button" data-filter="hr-software">
                            HR Software
                        </li>
                        <li class="blog-section-category-button" data-filter="retail-erp">
                            Retail ERP
                        </li>
                        <div class="dropdown">
                            <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Menu
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" data-filter="all">All</a>
                                <a class="dropdown-item" data-filter="software">Software</a>
                                <a class="dropdown-item" data-filter="enterprise-erp">Enterprise ERP</a>
                                <a class="dropdown-item" data-filter="hr-software">HR Software</a>
                                <a class="dropdown-item" data-filter="retail-erp">Retail ERP</a>
                            </div>
                        </div>
                    </ul>
                    <hr class="blog-section-tabs-hr-line" />
                    <div class="row">
                        <div class="filtr-container">
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="software"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog01.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="enterprise-erp"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog02.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="hr-software"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog03.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="retail-erp"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog04.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="software"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog01.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="enterprise-erp"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog02.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="hr-software"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog03.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="retail-erp"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog04.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="software"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog01.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="enterprise-erp"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog02.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="hr-software"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog03.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6 filtr-item" data-category="retail-erp"
                                data-sort="value">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog04.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
-->


<section>
        <div class="blog-gallary-section">
            <div class="container">
                <div class="blog-gallary-content">
                    <ul class="filter-menu">
        <?php 
             $categories = get_categories();
            foreach($categories as $category) {
             echo '<li><a href="' . get_category_link($category->term_id) . '" class="blog-section-category-button">' . $category->name . '</a></li>';
             }
         ?>
                    <!--
                        <li class="blog-section-category-button active">
                            All
                        </li>
                        <li class="blog-section-category-button">
                            Software
                        </li>
                        <li class="blog-section-category-button">
                            Enterprise ERP
                        </li>
                        <li class="blog-section-category-button">
                            HR Software
                        </li>
                        <li class="blog-section-category-button">
                            Retail ERP
                        </li>
                    -->
                    </ul>

                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Menu
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

            <?php 
                $categories = get_categories();
                foreach($categories as $category) {
                   echo '<li><a href="' . get_category_link($category->term_id) . '" class="dropdown-item">' . $category->name . '</a></li>';
                }
             ?>

                        <!--
                            <a class="dropdown-item">All</a>
                            <a class="dropdown-item">Software</a>
                            <a class="dropdown-item">Enterprise ERP</a>
                            <a class="dropdown-item">HR Software</a>
                            <a class="dropdown-item">Retail ERP</a>
                        -->
                        </div>
                    </div>
                    <hr class="blog-section-tabs-hr-line" />
                    <div class="filtr-container">
                        <div class="row">


        <?php query_posts( 'category_name=all&posts_per_page=10' ); ?>
            <?php while ( have_posts() ) : the_post(); ?>

                    <?php
                          $mycontent = $post->post_content; // wordpress users only
                          $word = str_word_count(strip_tags($mycontent));
                          $m = floor($word / 200);
                          $s = floor($word % 200 / (200 / 60));
                          $est = $m . ' MIN' . ($m == 1 ? '' : '') . ', ' . $s . ' SEC' . ($s == 1 ? '' : '');
                      ?>

                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="<?php the_permalink();?>">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_the_post_thumbnail_url() ?>" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                <?php echo wp_trim_words( get_the_title(), 9, '...' );?>
                                            </h2>
                                        </div>
                                        <div class="single-blog-section-tab-content-software-date-time">
                                            <p class="single-blog-section-tab-content-software-date">
                                                <?php the_time( 'j M Y' ); ?>
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p><?php echo $est; ?></p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

            <?php endwhile; ?>
                      <!--
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog02.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog03.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog04.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog01.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog02.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog03.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog04.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog01.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog02.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog03.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="blog-single.html">
                                    <div class="single-blog-section-tab-content-software">
                                        <div class="single-blog-section-tab-content-software-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/blog04.png" alt="iBOS" />
                                        </div>
                                        <div class="single-blog-section-tab-content-software-title">
                                            <h2>
                                                3 Simple Ways To Save A Bunch of Money When Buying A
                                                New Computer
                                            </h2>
                                        </div>
                                        <div class="
                            single-blog-section-tab-content-software-date-time
                          ">
                                            <p class="single-blog-section-tab-content-software-date">
                                                14 Aug 2021
                                            </p>
                                            <div class="single-blog-section-tab-content-software-time">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                                <p>10 min read</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


 

    <!-- footer section -->
<?php get_footer();?>
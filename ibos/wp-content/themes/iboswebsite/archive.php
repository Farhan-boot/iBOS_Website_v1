 <?php get_template_part('custom_header/gray-header');?>

   <?php if (have_posts()) : ?>
            <?php $post = $posts[0]; // Hack. Set $post so that the_date() works. ?>
            <?php /* If this is a category archive */ if (is_category()) { ?>


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

<?php 
  global $wp;
  $current_url = home_url(add_query_arg(array(), $wp->request));
  $rev_url= strrev($current_url);
  $new_var = substr($rev_url, 0, strpos($rev_url, "/"));
  $category_url= strrev($new_var);
  //echo $category_url;
?>

<section>
        <div class="blog-gallary-section">
            <div class="container">
                <div class="blog-gallary-content">
                    <ul class="filter-menu">
        <?php 
             $categories = get_categories();
            foreach($categories as $category) {
            $cat_slug =$category->slug;

      if ($cat_slug==$category_url) {
        $active_var= "active";
       echo '<li class="'.$active_var.'"><a href="' . get_category_link($category->term_id) . '" class="blog-section-category-button">' . $category->name . '</a></li>';
      }
      else{
       echo '<li class=""><a href="' . get_category_link($category->term_id) . '" class="blog-section-category-button">' . $category->name . '</a></li>';
      }

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

                        
                        </div>
                    </div>
                    <hr class="blog-section-tabs-hr-line" />
                    <div class="filtr-container">
                        <div class="row">

                          <?php /* If this is a daily archive */ } elseif (is_day()) { ?>
                          <h2 class="pagetitle">Archive for <?php the_time('F jS, Y'); ?></h2>

                          <?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
                          <h2 class="pagetitle">Archive for <?php the_time('F, Y'); ?></h2>

                          <?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
                          <h2 class="pagetitle">Archive for <?php the_time('Y'); ?></h2>

                          <?php /* If this is an author archive */ } elseif (is_author()) { ?>
                          <h2 class="pagetitle">Author Archive</h2>

                          <?php /* If this is a paged archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
                          <h2 class="pagetitle">Blog Archives</h2>
                          <?php } ?>

            <?php while(have_posts()) : the_post(); ?>

                      <?php
                          $mycontent = $post->post_content; // wordpress users only
                          $word = str_word_count(strip_tags($mycontent));
                          $m = floor($word / 200);
                          $s = floor($word % 200 / (200 / 60));
                          $est = $m . ' MIN' . ($m == 1 ? '' : '') . ', ' . $s . ' SEC' . ($s == 1 ? '' : '');
                      ?>

                            <div class="col-xl-3 col-lg-4 col-sm-6">
                                <a href="<?php the_permalink(); ?>">
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


              <?php 
                previous_posts_link();
                  next_posts_link();
             ?>
 <?php else : ?>
            <h2 class="center" style="min-height: 170px">Not Found</h2>
<?php endif; ?>
                     

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



          
<?php get_footer();?>




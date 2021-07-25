
 <?php get_template_part('custom_header/white-header-with-menu');?>



<!--
<?php
  $url = htmlspecialchars($_SERVER['HTTP_REFERER']);
  echo "<a href='$url'>Go-Back</a>"; 
?>
-->
<style type="text/css">
	.thumbnail-width{
		min-width: 100%;
	}
</style>
<?php if (have_posts())  while (have_posts()) : the_post(); ?>
		<!--
				<?php wp_list_categories( array(
					'orderby'    => 'name',
					'show_count' => false,
				    'exclude'    => array( 10 )
				 ) ); ?> 
						
		 		 <?php
					if ( has_post_thumbnail() ) {    
						}
					else {
					 echo the_time('d M Y');
					}
				?>
		-->

  <!-- single blog section -->
    <section>
        <div class="single-blog-section">
            <div class="container">
                <div class="single-blog-item">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="single-blog-sidebar">
                                <div class="single-blog-side-menu">
                                    <!-- accordion start -->
                                    <div class="">
                                        <div class="accordion">
                                            <div class="panel-group" id="accordion" role="tablist"
                                                aria-multiselectable="true">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading" role="tab">
                                                        <h4 class="panel-title">
                                                            <a role="button" data-toggle="collapse" href="#collapseOne"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                                Essential Hair Accessory Tips
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseOne" data-parent="#accordion"
                                                        class="panel-collapse collapse" role="tabpanel"
                                                        aria-labelledby="headingOne">
                                                        <div class="panel-body">
                                                            <ul class="sidebar-accordion-item-list">
                                                                <li><a href="#">Motorhome Or Trailer</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading" role="tab">
                                                        <h4 class="panel-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse"
                                                                href="#collapseTwo" aria-expanded="false"
                                                                aria-controls="collapseTwo">
                                                                Weddine Makeup Tips
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseTwo" data-parent="#accordion"
                                                        class="panel-collapse collapse" role="tabpanel"
                                                        aria-labelledby="headingTwo">
                                                        <div class="panel-body">
                                                            <ul class="sidebar-accordion-item-list">
                                                                <li>
                                                                    <a href="#">
                                                                        Motorhome Or Trailer
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        Home Remedies For Blisters
                                                                    </a>
                                                                </li>
                                                                <li><a href="#">When The Morning Dawns</a></li>
                                                                <li><a href="#">Motorhome Or Trailer</a></li>
                                                                <li>
                                                                    <a href="#">Home Remedies For Blisters</a>
                                                                </li>
                                                                <li><a href="#">What S Under Your Grill</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading" role="tab">
                                                        <h4 class="panel-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse"
                                                                href="#collapseThree" aria-expanded="false"
                                                                aria-controls="collapseThree">
                                                                Dna The Future Of Nutrition
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseThree" data-parent="#accordion"
                                                        class="panel-collapse collapse" role="tabpanel"
                                                        aria-labelledby="headingThree">
                                                        <div class="panel-body">
                                                            <ul class="sidebar-accordion-item-list">
                                                                <li><a href="#">Motorhome Or Trailer</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading" role="tab">
                                                        <h4 class="panel-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse"
                                                                href="#collapseFour" aria-expanded="false"
                                                                aria-controls="collapseFour">
                                                                Maui Hotel Or Maui Condo
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseFour" data-parent="#accordion"
                                                        class="panel-collapse collapse" role="tabpanel"
                                                        aria-labelledby="headingFour">
                                                        <div class="panel-body">
                                                            <ul class="sidebar-accordion-item-list">
                                                                <li><a href="#">Motorhome Or Trailer</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- accordion end -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                     <?php
                          $mycontent = $post->post_content; // wordpress users only
                          $word = str_word_count(strip_tags($mycontent));
                          $m = floor($word / 200);
                          $s = floor($word % 200 / (200 / 60));
                          $est = $m . ' MIN' . ($m == 1 ? '' : '') . ', ' . $s . ' SEC' . ($s == 1 ? '' : '');
                      ?>
                            <div class="single-blog-body">
                                <div class="single-blog-date-time">
                                    <div class="single-blog-time">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/clock.svg" alt="iBOS" />
                                        <p><?php echo $est; ?></p>
                                    </div>
                                  <p class="single-blog-date">
                                    <?php the_time( 'j M Y' ); ?>
                                  </p>
                                </div>
                                <hr />
                                <div class="single-blog-title-img-para">
                                    <div class="single-blog-title">
                                        <h2>
                                            <?php the_title(); ?>
                                        </h2>
                                    </div>
                                    <div class="single-blog-img">
                                          <?php the_post_thumbnail('medium_large');?>
                                    </div>
                                    <div class="single-blog-para">
                                        <p>
                                             <?php  the_content(); ?>
                                        </p>
                                    </div>
                                </div>
                             
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="single-blog-sign-up">
                                <h5 class="single-blog-sign-up-title">
                                    Sign up to Our Newsletter
                                </h5>
                                <p class="single-blog-sign-up-text">
                                    Get the latest articles on all things data delivered straight
                                    to your inbox
                                </p>
                                <div class="single-blog-sign-up-form">
                              <!--
                                    <form action="#">
                                        <div class="form-group">
                                            <input type="email" class="form-control contact-input-form"
                                                placeholder="Your work email">
                                        </div>
                                        <button type="submit">Subscribe</button>
                                    </form>
                                -->


                            <dir class="sendEmail">
                                    <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/shell.js"></script>
                                    <script>
                                      hbspt.forms.create({
                                        region: "na1",
                                        portalId: "20280711",
                                        formId: "0a6fe113-d9aa-4395-8abd-d7537fa02a82"
                                    });
                                    </script>
                            </dir>


                                </div>
                                <div class="single-blog-social-link">
                                    <h3>SHARE THIS ARTICLE</h3>
                                <!--
                                    <ul class="single-blog-social-icons">
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/facebook.svg" alt="iBOS">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/twitter.svg" alt="iBOS">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/linkedin.svg" alt="iBOS">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/instagram.svg" alt="iBOS">
                                            </a>
                                        </li>
                                    </ul>
                                -->
                            <?php wcr_share_buttons(); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

  <?php endwhile; ?>






<?php get_footer(); ?>


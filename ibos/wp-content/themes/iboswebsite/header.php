<?php
    global $uni_pro;
    $logo = $uni_pro['media-logo']['url'];
    $favicon = $uni_pro['media-favicon']['url'];
     $phone = $uni_pro['opt-number'];
    //$social_facebook = $uni_pro['opt-social-text-facebook'];
    //$social_youtube = $uni_pro['opt-social-text-youtube'];
    //$social_twitter = $uni_pro['opt-social-text-twitter'];
    // $social_gplus = $uni_pro['opt-social-text-gplus'];
    // $social_skype = $uni_pro['opt-social-text-skype'];
    // $social_flickr = $uni_pro['opt-social-text-flickr'];
    // $social_linkedin = $uni_pro['opt-social-text-linkedin'];
    // $social_wordpress = $uni_pro['opt-social-text-wordpress'];
    // $social_vimeo = $uni_pro['opt-social-text-vimeo'];  
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <!-- All meta tag -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- title -->
    <title>iBOS</title>
    <link rel=icon href="<?php echo $favicon ?>">
    <!-- all css link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/slick.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/slick-theme.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/responsive.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css">



</head>

<body>
    

  


 


 <header id="header" class="header">
        <div class="container">
            <div class="header-content">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <h1>
                                <a href="<?php echo get_option("siteurl"); ?>">
                                    <img src="<?php echo $logo ?>" alt="iBOS">
                                </a>
                            </h1>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <nav class="nav-menu nav-menu-content">

                         <?php
                                  $args = array(
                                'theme_location' => 'top-bar',
                                'depth'          => 10,
                                'container'      => false,
                                'menu_class'     => '',
                                'walker'         => new Bootstrap_Walker_Nav_Menu()
                                        );
                                wp_nav_menu($args);                      
                            ?>


                    <!--
                            <ul>
                                <li><a href="#">Products</a></li>
                                <li><a href="#">Free For SME</a></li>
                                <li class="drop-down">
                                    <a href="#">Services</a>
                                    <ul>
                                        <li><a href="#">Website Development</a></li>
                                        <li><a href="#">E-commerce Development</a></li>
                                        <li><a href="#">Mobile App Development</a></li>
                                        <li><a href="#">Custom Software Development</a></li>
                                        <li><a href="#">Enterprise Privacy & Security</a></li>
                                    </ul>
                                </li>
                                <li><a href="about.html">About us</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>

                        -->
     <?php if ($phone!="" || $phone!=null) { ?>
                                <div class="header-menu-call">
                                    <p class="header-para">
                                        <a href="#" class="header-para-mobile-link"></a>
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo/header-call.svg" alt="iBOS">
                                         <?php echo $phone ?>
                                    </p>
                                </div>
    <?php } ?>


                     <div class="header-menu-call">
                                <a href="https://ibosbd.wpengine.com/book-demo/" class="btn btn-footer btn-footer-reverse">
                                    Book a Demo
                                </a>
                     </div>


                        </nav><!-- .nav-menu -->
                    </div>
                </div>
            </div>
        </div>
    </header>
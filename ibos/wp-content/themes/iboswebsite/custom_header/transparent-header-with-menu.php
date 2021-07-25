<?php
    global $uni_pro;
    $logo = $uni_pro['media-logo']['url'];
    $favicon = $uni_pro['media-favicon']['url'];
    $phone = $uni_pro['opt-number'];
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
    <link rel="shortcut icon" type="<?php echo get_template_directory_uri(); ?>/image/icon" href="assets/images/logo/ibos favicon.svg" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/slick.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/slick-theme.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/step-slider.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/responsive.css">

</head>

<body id="book-demo-body">

    <!-- new-welcome section -->
    <div class="new-welcome-section bg-curve-img">

        <!-- header section start -->
        <header id="header" class="header gray-header gray-header-blog">
            <div class="container">
                <div class="header-content">
                    <div class="row">
                        <div class="col-lg-2">
                            <div class="logo blue-logo">
                                <h1>
                                    <a href="<?php echo get_option("siteurl"); ?>">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo/map-logo.svg" alt="iBOS">
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

                             <?php if ($phone!="" || $phone!=null) { ?>
                                <div class="header-menu-call">
                                    <p class="header-para">
                                        <a href="#" class="header-para-mobile-link"></a>
                                        <img class="gray-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/others/gray-call.svg" alt="iBOS">
                                        <img class="d-lg-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo/header-call.svg" alt="iBOS">
                                         <?php echo  $phone ?>
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

  <?php
    global $uni_pro;
    $logo = $uni_pro['media-logo']['url'];
    $social_facebook = $uni_pro['opt-social-text-facebook'];
    $social_instagram = $uni_pro['opt-social-text-instagram'];
    $social_twitter = $uni_pro['opt-social-text-twitter'];
    $social_linkedin = $uni_pro['opt-social-text-linkedin'];
   //footer section
    $footer_text_section1 = $uni_pro['opt-footer-text-section1'];
    $footer_text_section2 = $uni_pro['opt-footer-text-section2'];
    $footer_text_section3 = $uni_pro['opt-footer-text-section3'];
    $footer_text = $uni_pro['opt-footer-bottom'];

    $productPageModal = $uni_pro['opt-Our-ProductPageModal'];
?>

   <footer>
        <div class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="single-footer-item">
                            <div class="footer-logo">
                                <img src="<?php echo $logo ?>" alt="iBOS">
                            </div>
                            <div class="footer-logo-txt">
                                <p>
                                    <?php echo $footer_text_section1; ?>
                                </p>
                                <ul class="footer-list">
                                    <li>
                                        <a href="<?php echo $social_facebook ?>">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer/icon/facebook.svg" alt="iBOS">
                                        </a>
                                    </li>
                                <!--
                                    <li>
                                        <a href="#">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer/icon/twitter.svg" alt="iBOS">
                                        </a>
                                    </li>
                                -->
                                    <li>
                                        <a href="<?php echo $social_linkedin ?>">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer/icon/linked.svg" alt="iBOS">
                                        </a>
                                    </li>
                                <!--
                                    <li>
                                        <a href="#">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer/icon/instagram.svg" alt="iBOS">
                                        </a>
                                    </li>
                                -->
                                </ul>
                            </div>
                        </div>
                    </div>

 
                    <div class="col-lg-6">
                                <div class="row">

                                    <div class="col-lg-4 col-6 order-lg-1 order-1">
                                        <div class="single-footer-item">
                                            <h4 class="footer-title">Company</h4>
                                                       
                                            <?php wp_nav_menu( array( 'theme_location' => 'footer-company' ) ); ?>

                                                <!--
                                                  <ul class="footer-menu-list">
                                                        <li>
                                                            <a href="#">Home</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">About</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Contact</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Blog</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Book a demo</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Careers</a>
                                                        </li>
                                                    </ul>
                                                    -->
                                        </div>
                                    </div>



                                    <div class="col-lg-2 order-lg-2 order-3"></div>
                                    <div class="col-lg-5 col-6 order-lg-3 order-2">
                                        <div class="single-footer-item custom-margin-left">
                                            <h4 class="footer-title">Free for SME</h4>

                                     <?php wp_nav_menu( array( 'theme_location' => 'footer-SME' ) ); ?>
                                     <!--
                                            <ul class="footer-menu-list">
                                                <li>
                                                    <a href="#">Cloud ERP</a>
                                                </li>
                                                <li>
                                                    <a href="#">Accounting</a>
                                                </li>
                                                <li>
                                                    <a href="#">HR + Payroll</a>
                                                </li>
                                                <li>
                                                    <a href="#">Time Tracking</a>
                                                </li>
                                                <li>
                                                    <a href="#">CRM</a>
                                                </li>
                                            </ul>
                                        -->
                                        </div>
                                    </div>
                                </div>
                                <div class="single-footer-row">
                                    <div class="single-footer-item">
                                        <h4 class="footer-title">Products</h4>

                                <?php wp_nav_menu( array( 'theme_location' => 'footer-Products' ) ); ?>
                                    <!--
                                        <ul class="footer-menu-list">
                                            <li>
                                                <a href="#">Enterprise ERP</a>
                                            </li>
                                            <li>
                                                <a href="#">Accounting</a>
                                            </li>
                                            <li>
                                                <a href="#">HR Software</a>
                                            </li>
                                            <li>
                                                <a href="#">VAT Software</a>
                                            </li>
                                            <li>
                                                <a href="#">VAT Software</a>
                                            </li>
                                            <li>
                                                <a href="#">Ecommerce & Inventory</a>
                                            </li>
                                            <li>
                                                <a href="#">Ratail ERP with POS</a>
                                            </li>
                                            <li>
                                                <a href="#">Toute To Market (RTM)</a>
                                            </li>
                                            <li>
                                                <a href="#">Performance Management System</a>
                                            </li>
                                            <li>
                                                <a href="#">Email Marketing Software</a>
                                            </li>
                                            <li>
                                                <a href="#">CRM With Sales Software</a>
                                            </li>
                                        </ul>
                                    -->
                                    </div>
                                    <div class="single-footer-item fotter-custom-left">
                                        <h4 class="footer-title">Services</h4>
                                    <?php wp_nav_menu( array( 'theme_location' => 'footer-Services' ) ); ?>

                                    <!--
                                        <ul class="footer-menu-list">
                                            <li>
                                                <a href="#">Website Development</a>
                                            </li>
                                            <li>
                                                <a href="#">Ecommerce Development</a>
                                            </li>
                                            <li>
                                                <a href="#">Mobile App Development</a>
                                            </li>
                                            <li>
                                                <a href="#">Custom Software Development</a>
                                            </li>
                                            <li>
                                                <a href="#">Enterprise Privacy & Security</a>
                                            </li>
                                        </ul>
                                    -->
                                    </div>
                                </div>
                            </div>


                     <?php echo $footer_text_section2 ?>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="footer-bottom-content">
                    <div></div>
                    <?php echo $footer_text ?>
                </div>
            </div>
        </div>
        <div id="scroll-Top">
            <div class="return-to-top">
                <i class="fa fa-angle-up " id="scroll-top" data-toggle="tooltip" data-placement="top" title=""
                    data-original-title="Back to Top" aria-hidden="true"></i>
            </div>
        </div>
    </footer>

        <!-- Include all js compiled plugins (below), or include individual files as needed -->

    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/popper.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrap.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.sticky.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/owl.carousel.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/slick.min.js"></script>
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/vanilla-tilt.min.js"></script>
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/slider-script.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/custom.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/custom-menu.js"></script>



















        <script type="text/javascript">
               $(document).ready(function() {
                    setTimeout(function(){ 
                            $('iframe').contents().find("head")
                             .append($("<style type='text/css'>.hs-button.primary.large{padding: 18px 25px;border: 1px solid var(--neon-blue);border-radius: 30px;width: 100%;font-size: 16px;font-weight: 500;line-height: 1.5;text-align: center;color: var(--dusk);outline: 0;box-shadow: none;background-color: #02d8fb;text-transform: initial;border: 2px solid var(--color-less);transition: .3s linear;width: 200px;};</style>"))
                             .append($("<style type='text/css'>.actions{text-align:center};</style>"))

            .append($("<style type='text/css'>#firstname-46954226-a168-4cbf-a59a-03a918481f0d{float: left;width: 49%;margin: 4px;};</style>"))
            .append($("<style type='text/css'>#phone-46954226-a168-4cbf-a59a-03a918481f0d{float: left;width: 49%;margin: 4px;};</style>"))
            .append($("<style type='text/css'>#email-46954226-a168-4cbf-a59a-03a918481f0d{float: left;width: 49%;margin: 4px;};</style>"))                   
            .append($("<style type='text/css'>#lastname-46954226-a168-4cbf-a59a-03a918481f0d{float: left;width: 49%;margin: 4px;};</style>"));

                         }, 1000);
                });
        </script>





        <script type="text/javascript">
               $(document).ready(function() {
                    setTimeout(function(){ 
                            $('iframe').contents().find("head")
                             .append($("<style type='text/css'>.hs-button.primary.large{padding: 18px 25px;border: 1px solid var(--neon-blue);border-radius: 30px;width: 100%;font-size: 16px;font-weight: 500;line-height: 1.5;text-align: center;color: var(--dusk);outline: 0;box-shadow: none;background-color: #02d8fb;text-transform: initial;border: 2px solid var(--color-less);transition: .3s linear;width: 200px;};</style>"))
                             .append($("<style type='text/css'>.actions{text-align:center};</style>"))

            .append($("<style type='text/css'>#firstname-3bfb247b-acae-4e11-8c22-5c55450c32fa{float: left;width: 30%;margin-right: 20px;};</style>"))
            .append($("<style type='text/css'>#mobilephone-3bfb247b-acae-4e11-8c22-5c55450c32fa{float: left;width: 30%;margin-right: 20px;};</style>"))
            .append($("<style type='text/css'>#hs_persona-3bfb247b-acae-4e11-8c22-5c55450c32fa{float: left;width: 30%;margin-right: 20px;};</style>"))                   
            .append($("<style type='text/css'>#message-3bfb247b-acae-4e11-8c22-5c55450c32fa{float: left;width: 100%;margin-top: 30px;margin-bottom:30px;min-height:200px};</style>"));
                         }, 1000);
                });
        </script>






        <script type="text/javascript">
               $(document).ready(function() {
                    setTimeout(function(){ 
                            $('iframe').contents().find("head")
                             .append($("<style type='text/css'>.sendEmail.hs-button.primary.large{padding: 18px 25px;border: 1px solid var(--neon-blue);border-radius: 30px;width: 100%;font-size: 16px;font-weight: 500;line-height: 1.5;text-align: left;color: var(--dusk);outline: 0;box-shadow: none;background-color: #02d8fb;text-transform: initial;border: 2px solid var(--color-less);transition: .3s linear;width: 200px;};</style>"))
                             .append($("<style type='text/css'>.sendEmail .actions{float:left};</style>"));

                         }, 1000);
                });
        </script>





        










    <script type="text/javascript">
        $(".single-footer-item ul#menu-footer-company").addClass('footer-menu-list');
        $(".single-footer-item ul#menu-footer-sme").addClass('footer-menu-list');
        $(".single-footer-item ul#menu-footer-services").addClass('footer-menu-list');
        $("#menu-footer-products").addClass('footer-menu-list');
        $("form .contact-submit-btn .form-group input").addClass('btn btn-footer btn-contact');
    </script>
</body>

</html>
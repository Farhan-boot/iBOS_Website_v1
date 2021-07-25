<?php 
	/*
	Template Name: Contact-Template
	*/
?>
  <?php
    global $uni_pro;
    $logo = $uni_pro['media-logo']['url'];
    $social_facebook = $uni_pro['opt-social-text-facebook'];
    $social_instagram = $uni_pro['opt-social-text-instagram'];
    $social_twitter = $uni_pro['opt-social-text-twitter'];
    $social_linkedin = $uni_pro['opt-social-text-linkedin'];
?>

<?php get_header(); ?>


    <!-- Welcome banner section -->
    <section>
        <div class="welcome-banner bg-blue">
            <div class="container">
                <div class="welcome-section-title contact-section-title">
                    <h2 class="welcome-heading">
                        Get in Touch to Get 30 Days Free Trial on Any of Our Software
                    </h2>
                <!--
                    <div class="welcome-btn-section">
                        <a href="#appointment" class="btn btn-footer appointment-smooth">Book an Appointment</a>
                        <a href="#" class="btn btn-footer btn-footer-reverse">
                            Click Here to Start Chat
                        </a>
                    </div>
                 -->
                </div>
            </div>
        </div>
    </section>

    <!-- contact-address section -->
    <section>
        <div class="contact-address-section upper-move">
            <div class="container">
                <div class="contact-address-section-content">
                    <div class="contact-call-circle">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/contact-call.svg" alt="iBOS">
                    </div>
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <div class="single-contact-address">
                                <div class="single-contact-address-txt">
                                    <div class="single-contact-address-txt-wrapper">
                                        <h3>Talk to Sales </h3>
                                        <p>
                                            Interested in learning about iBOS’ software? Just pick up the phone to chat
                                            with
                                            a member of our team.
                                        </p>
                                    </div>

                                    <ul class="single-contact-address-list">
                                        <li>
                                            <span class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/call.svg" alt="iBOS">
                                            </span>
                                            <span>01703-596292 </span>
                                            <a href="#" class="contact-address-link"></a>
                                        </li>
                                        <li>
                                            <span class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/mail.svg" alt="iBOS">
                                            </span>
                                            <span>info@ibos.io</span>
                                            <a href="#" class="contact-address-link"></a>
                                        </li>
                                        <li>
                                            <span class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/map-icon.svg" alt="iBOS">
                                            </span>
                                            <span>
                                                House no 6/2, Kazi Nazrul Islam RD, Lalmatia, Dhaka - 1207
                                            </span>
                                            <a href="#" class="contact-address-link"></a>
                                        </li>
                                        <li>
                                            <span class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/direction.svg" alt="iBOS">
                                            </span>
                                            <span>Get Direction</span>
                                            <a href="https://goo.gl/maps/wbnpwUhkDHhewPZZ9" class="contact-address-link"
                                                target="_blank"></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="single-contact-address">
                                <div id="mapid"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- contact-form section -->
    <section>
        <div class="conatact-form-section" id="appointment">
            <div class="container">
                <div class="section-title section-title362">
                    <h2 class="section-title">How Can we Help?</h2>
                </div>
                <div class="contact-form-content">
                    <h3>Send us a Message! </h3>

                  

<!--
                    <form action="#" class="contact-form">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" class="form-control contact-input-form" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" class="form-control contact-input-form" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="email" class="form-control contact-input-form" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" class="form-control contact-input-form"
                                        placeholder="Company Website">
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
                                    <button type="submit" class="btn btn-footer btn-contact">
                                        Send Message
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
-->


<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/shell.js"></script>
<script>
  hbspt.forms.create({
    region: "na1",
    portalId: "20280711",
    formId: "46954226-a168-4cbf-a59a-03a918481f0d"
});
</script>


                     <ul class="contact-form-icon-list">
                        <li>
                             <a href="<?php echo $social_facebook ?>" class="single-contact-link">
                             <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/facebook.svg" alt="iBOS">
                         </a>
                        </li>
                            <li>
                             <a href="<?php echo $social_linkedin ?>" class="single-contact-link">
                               <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/linkedin.svg" alt="iBOS">
                            </a>
                         </li>
                    </ul>

                </div>
            </div>
        </div>
    </section>

			
<?php get_footer(); ?>





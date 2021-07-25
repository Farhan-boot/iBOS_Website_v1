 <!-- footer section -->
    <footer>
        <div class="footer-bottom book-demo-footer-demo">
            <div class="container">
                <div class="footer-bottom-content">
                    <div class="footer-bottom-logo">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer/footer-logo.svg" alt="ibos">
                    </div>
                    <ul class="footer-bottom-list">
                        <li>
                            <a href="#"> Privacy</a>
                        </li>
                        <li>
                            <a href="#"> Terms</a>
                        </li>
                        <li>
                            <a href="#">&commat; iBOS - An Akij Company</a>
                        </li>
                    </ul>
                </div>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/custom.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/custom-menu.js"></script>
     <Script>

        // let timer ;

        // timer = setInterval(()=>{
        //     console.log("checking by interval")
        //      const iframeHeader = $('iframe').contents().find("head")
        //      const isBtnVisible = $('.hs-button.primary.large')
        //       const hub = $('#hs-form-iframe-0')
        //      console.log(isBtnVisible)
        //      if(hub){
        //         $(hub).ready(()=>{
        //             // alert("its time to inject")
        //             $('iframe').contents().find("head")
        //      .append($("<style type='text/css'>  .hs-button.primary.large{display:none;}  </style>"));
        //         })
        //         // iframeHeader.append($("<style type='text/css'>  .hs-button.primary.large{display:none;}  </style>"));
        //         clearInterval(timer)
        //          console.log("interval stopped")
        //      }

        // },100)

         // $(document).on('DOMContentLoaded',()=>{
         //        // alert("all dom content loaded ")
         //         $('iframe').contents().find("head")
         //     .append($("<style type='text/css'>  .hs-button.primary.large{display:none;}  </style>"));
         //    })


        $(document).ready(function() {
            setTimeout(function(){ 
                    $('iframe').contents().find("head")
                     .append($("<style type='text/css'>.hs-button.primary.large{padding: 18px 25px;border: 1px solid var(--neon-blue);border-radius: 30px;width: 100%;font-size: 16px;font-weight: 500;line-height: 1.5;text-align: center;color: var(--dusk);outline: 0;box-shadow: none;background-color: #02d8fb;text-transform: initial;border: 2px solid var(--color-less);transition: .3s linear;};</style>"));
                 }, 1000);
        });




       // $(document).ready(()=>{
           // setTimeout(()=>{
               // $('iframe').contents().find("head")
            // .append($("<style type='text/css'>  .hs-button.primary.large{display:none;}  </style>"));

           //  console.log("injected")
        // },1000)
             
        // })



     

     </Script>
</body>

</html>
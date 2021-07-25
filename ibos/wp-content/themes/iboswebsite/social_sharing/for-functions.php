<?php
function wcr_share_buttons() {
    $share_url      = urlencode(get_the_permalink());
    $share_title    = urlencode(html_entity_decode(get_the_title(), ENT_COMPAT, 'UTF-8'));
    $media          = urlencode(get_the_post_thumbnail_url(get_the_ID(), 'full'));

    include( locate_template('social_sharing/social-share.php', false, false) );
}
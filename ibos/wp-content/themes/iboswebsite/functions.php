<?php
	function FS_JESY(){
		add_theme_support('titel-tag');
		add_theme_support('post-thumbnails');
		add_theme_support('custom-background');
		//for slider
		register_post_type('Main_Slider',array(
			'labels' => array(
				'name' =>'Sliders',
				'add_new_item' =>'You can Add your slider & title'
				),
			'public' =>true,
			'supports' =>array('title', 'thumbnail', 'editor')
			));	
	  //our client
        register_post_type('Our_Client',array(
            'labels' => array(
                'name' =>'Our Client',
                'add_new_item' =>'You can Add Your Client Show On Home Page'
                ),
            'public' =>true,
            'supports' =>array('', 'thumbnail', '')
            )); 
        
     //Technologies 
        register_post_type('Our_Technologies',array(
            'labels' => array(
                'name' =>'Technologies',
                'add_new_item' =>'You can Add Your Technologies Show On Home Page'
                ),
            'public' =>true,
            'supports' =>array('', 'thumbnail', '')
          )); 


     //Blog section one 
        register_post_type('Blog_Section_One',array(
            'labels' => array(
                'name' =>'Blog Section One',
                'add_new_item' =>'You can Add Your Blog Section One Show On Home Page'
                ),
            'public' =>true,
            'supports' =>array('title', 'thumbnail', 'editor')
          )); 

    //Blog section one 
        register_post_type('Blog_Section_Two',array(
            'labels' => array(
                'name' =>'Blog Section Two',
                'add_new_item' =>'You can Add Your Blog Section Two Show On Home Page'
                ),
            'public' =>true,
            'supports' =>array('title', 'thumbnail', 'editor')
          )); 


     //Our Team Member section 
        register_post_type('Our_Team_Member',array(
            'labels' => array(
                'name' =>'Our Team Member',
                'add_new_item' =>'You can Add or Edit Our Team Member Information'
                ),
            'public' =>true,
            'supports' =>array('title', 'thumbnail', 'editor')
          )); 




		}
add_action('after_setup_theme','FS_JESY');



//text shortting
function getSiteTitle()
        {
           if ( is_single() ) {
            single_post_title('', true);  echo"|"; bloginfo('name'); echo " - "; bloginfo('description');
            } else {
                bloginfo('name'); echo " - "; bloginfo('description');
            }
           
        }
  function getTrimHtml($text, $startIndex, $endIndex)
    {
        return substr(strip_tags($text),$startIndex,$endIndex);;
    }

/******************************************************************************
     *For bootstrap_setup Meanu
     *****************************************************************************/
add_action( 'after_setup_theme', 'bootstrap_setup' );
 
if ( ! function_exists( 'bootstrap_setup' ) ):
        function bootstrap_setup(){
                add_action( 'init', 'register_menu' );                     
                function register_menu(){
                        register_nav_menu( 'top-bar', 'Bootstrap Top Menu' );
                }
                class Bootstrap_Walker_Nav_Menu extends Walker_Nav_Menu {                      
                        function start_lvl( &$output, $depth = 0, $args = array() ) {
                                $indent = str_repeat( "\t", $depth );
                                $output    .= "\n$indent<ul class=\"dropdown\">\n";     
                        }
             function start_el( &$output, $item, $depth = 0, $args = array(), $id = 0 ) {                  
             $indent = ( $depth ) ? str_repeat( "\t", $depth ) : '';
                $li_attributes = '';
                 $class_names = $value = '';
                 $classes = empty( $item->classes ) ? array() : (array) $item->classes;
                 $classes[] = ($args->has_children) ? 'drop-down' : '';
                 $classes[] = ($item->current || $item->current_item_ancestor) ? 'active' : '';
                 $classes[] = 'nav-item smooth-menu menu-item-' . $item->ID;
                 $class_names = join( ' ', apply_filters( 'nav_menu_css_class', array_filter( $classes ), $item, $args ) );
                $class_names = ' class="' . esc_attr( $class_names ) . '"';
                $id = apply_filters( 'nav_menu_item_id', 'menu-item-'. $item->ID, $item, $args );
                $id = strlen( $id ) ? ' id="' . esc_attr( $id ) . '"' : '';
                $output .= $indent .'<li' . $id . $value . $class_names . $li_attributes . '>';
                        $attributes  = ! empty( $item->attr_title ) ? ' title="'  . esc_attr( $item->attr_title ) .'"' : '';
                        $attributes .= ! empty( $item->target )     ? ' target="' . esc_attr( $item->target     ) .'"' : '';
                        $attributes .= ! empty( $item->xfn )        ? ' rel="'    . esc_attr( $item->xfn        ) .'"' : '';
                        $attributes .= ! empty( $item->url )        ? ' href="'   . esc_attr( $item->url        ) .'"' : '';
                        $attributes .= ($args->has_children)        ? ' class="drop-down" data-toggle=""' : '';
                        $item_output = $args->before;
                         $item_output .= '<a'. $attributes . 'class="" '.'>';
                        $item_output .= $args->link_before . apply_filters( 'the_title', $item->title, $item->ID ) . $args->link_after;
                        $item_output .= ($args->has_children) ? ' <b class=""></b></a>' : '</a>';
                        $item_output .= $args->after;
                        $output .= apply_filters( 'walker_nav_menu_start_el', $item_output, $item, $depth, $args );
                        }
function display_element( $element, &$children_elements, $max_depth, $depth=0, $args, &$output )
 { 
     if ( !$element )
             return;
    $id_field = $this->db_fields['id'];
 //display this element
            if ( is_array( $args[0] ) )
                $args[0]['has_children'] = ! empty( $children_elements[$element->$id_field] );
                else if ( is_object( $args[0] ) )
                $args[0]->has_children = ! empty( $children_elements[$element->$id_field] );
                 $cb_args = array_merge( array(&$output, $element, $depth), $args);
                 call_user_func_array(array(&$this, 'start_el'), $cb_args);
                $id = $element->$id_field;
// descend only when the depth is right and there are childrens for this element
if ( ($max_depth == 0 || $max_depth > $depth+1 ) && isset( $children_elements[$id]) )
{ 
    foreach( $children_elements[ $id ] as $child )
    {
                    if ( !isset($newlevel) )
                    {
                        $newlevel = true;
//start the child delimiter
 $cb_args = array_merge( array(&$output, $depth), $args);
call_user_func_array(array(&$this, 'start_lvl'), $cb_args);
                    }
$this->display_element( $child, $children_elements, $max_depth, $depth + 1, $args, $output );
        }
unset( $children_elements[ $id ] );
  }
 if ( isset($newlevel) && $newlevel ){
//end the child delimiter
$cb_args = array_merge( array(&$output, $depth), $args);
call_user_func_array(array(&$this, 'end_lvl'), $cb_args);
}
//end this element
$cb_args = array_merge( array(&$output, $element, $depth), $args);
call_user_func_array(array(&$this, 'end_el'), $cb_args);
                               }
                           }
                       }
endif;






/******************************************************************************
     *For bootstrap_setup Meanu for footer
     *****************************************************************************/
function register_company() {
  register_nav_menu('footer-company',__( 'Footer Menu For Company' ));
}
add_action( 'init', 'register_company' );


function register_Products() {
  register_nav_menu('footer-Products',__( 'Footer Menu For Products' ));
}
add_action( 'init', 'register_Products' );


function register_SME() {
  register_nav_menu('footer-SME',__( 'Footer Menu For SME' ));
}
add_action( 'init', 'register_SME' );


function register_Services() {
  register_nav_menu('footer-Services',__( 'Footer Menu For Services' ));
}
add_action( 'init', 'register_Services' );



/******************************************************************************
     * Enable Redux Core Theme Option Framework
     *****************************************************************************/
    require_once ('inc/ReduxCore/framework.php');
    require_once ('inc/theme-config.php');


/************************
  social sharing
   ****************************/
   require_once ('social_sharing/for-functions.php');







    

/************************
   Footer Current Year
   ****************************/
    function currentYear(){
        return date('Y');
    }




?>








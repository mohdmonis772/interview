<?php
add_theme_support('post-thumbnails');
// Register Nav Menus
if ( ! function_exists( 'mytheme_register_nav_menu' ) ) {
	function shop_register_nav_menu(){
		register_nav_menus( array(
	    	'primary_menu' => __( 'Primary Menu', 'medical42works' ),
	    	'footer_menu'  => __( 'Footer Menu', 'medical42works' ),
		) );
	}
	add_action( 'after_setup_theme', 'shop_register_nav_menu', 0 );
}

// Enqueue Assets
add_action( 'wp_enqueue_scripts', 'shop_plugin_assets' );
function shop_plugin_assets() {
	
	wp_enqueue_style('bootstrap', get_stylesheet_directory_uri().'/css/bootstrap.min.css');
	wp_enqueue_style('slick', get_stylesheet_directory_uri().'/css/slick.css');
	wp_enqueue_style('slick-theme', get_stylesheet_directory_uri().'/css/slick-theme.css');
	wp_enqueue_style('slick-lightbox', get_stylesheet_directory_uri().'/css/slick-lightbox.css');
	wp_enqueue_style('icofont', get_stylesheet_directory_uri().'/css/icofont.min.css');
	wp_enqueue_style('maincss', get_stylesheet_directory_uri().'/css/main.css');
	wp_enqueue_style('mediacss', get_stylesheet_directory_uri().'/css/media.css');
	

	
	wp_enqueue_script('bootstrap', get_stylesheet_directory_uri().'/js/bootstrap.bundle.min.js');
	wp_enqueue_script('jquery', get_stylesheet_directory_uri().'/js/jquery-3.6.0.min.js');
	wp_enqueue_script('slick', get_stylesheet_directory_uri().'/js/slick.min.js');
	wp_enqueue_script('slick-lightbox', get_stylesheet_directory_uri().'/js/slick-lightbox.js');
	wp_enqueue_script('script', get_stylesheet_directory_uri().'/js/script.js');

}

// Register Custom Post Type for Services
function services_setup_post_type() {
    $args = array (
        'public' => true,
        'label' =>__( 'Services', 'medical42works' ),
        'has_archive'        => true,
        'hierarchical'       => true,
        'supports' => array ( 'title', 'editor', 'thumbnail', 
        'excerpt' ),
    );
    register_post_type ( 'service', $args );
}
add_action ( 'init', 'services_setup_post_type' );

// Register Sidebar
if (function_exists('register_sidebar') ) {
    $sidebar1 = array(
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '',
        'after_title' => '',
        'name'=>__( 'Logo', 'medical42works' ),
        'id'  => 'header_logo',
        'description'=>__( ' upload the website logo', 'medical42works' ),
    );
	$sidebar2 = array(
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '',
        'after_title' => '',
        'name'=>__( 'Phone Detail', 'medical42works' ),
        'id'  => 'phone_detail',
        'description'=>__( ' Phone Detail', 'medical42works' ),
    );
	register_sidebar($sidebar1);
	register_sidebar($sidebar2);
}
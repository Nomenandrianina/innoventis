<?php
function innovtheme_supports()
{
    add_theme_support('title-tag');
}
function innovtheme_register_styles()
{
    global $post;
    wp_register_style('bootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css');
    wp_enqueue_style('bootstrap');

    wp_register_style('bootstrap-icons', 'https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css');
    wp_enqueue_style('bootstrap-icons');

    wp_register_style('fontawesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css');
    wp_enqueue_style('fontawesome');

    wp_register_style('aos', 'https://unpkg.com/aos@next/dist/aos.css');
    wp_enqueue_style('aos');

    wp_register_style('metropolis-fonts', 'https://fonts.cdnfonts.com/css/metropolis-2');
    wp_enqueue_style('metropolis-fonts');

    wp_register_style('swiper', 'https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css');
    wp_enqueue_style('swiper');
    wp_register_style('page', get_template_directory_uri() . '/dist/page.css');
    wp_enqueue_style('page');
    if (is_front_page()) {
        
        wp_register_style('home', get_template_directory_uri() . '/dist/home.css');
        wp_enqueue_style('home');
    } 
    if(is_page([11, 42])){
        //page secteurs d'activite fr et en
        wp_register_style('secteurs', get_template_directory_uri() . '/dist/secteurs.css');
        wp_enqueue_style('secteurs');
    }
    if(is_page([13, 45])){
        //page Nous contacter fr et en
        wp_register_style('contact', get_template_directory_uri() . '/dist/contact.css');
        wp_enqueue_style('contact');
    }
    // if(is_page() && ($post->post_parent == 11 || $post->post_parent == 42) ){
    //     // 11 = activites page ID fr
    //     // 42 = activites page ID en
    //     wp_register_style('activites', get_template_directory_uri() . '/dist/activites.css');
    //     wp_enqueue_style('activites');
    // }
    if(is_page([34, 61])){
        //page services fr (34) et en (61)
        wp_register_style('services', get_template_directory_uri() . '/dist/secteurs/services.css');
        wp_enqueue_style('services');
    }
    if(is_page([21, 54])){
        //page industrie fr (21) et en (54)
        wp_register_style('industrie', get_template_directory_uri() . '/dist/secteurs/industrie.css');
        wp_enqueue_style('industrie');
    }
    if(is_page([19, 51])){
        //page distribution fr (19) et en (51)
        wp_register_style('distribution', get_template_directory_uri() . '/dist/secteurs/distribution.css');
        wp_enqueue_style('distribution');
    }
    if(is_page([38, 58])){
        //page negoce et sourcing fr (38) et en (51)
        wp_register_style('negoce-et-soucing', get_template_directory_uri() . '/dist/secteurs/negoce-et-soucing.css');
        wp_enqueue_style('negoce-et-soucing');
    }
    if(is_page([36, 48])){
        //page immobilier fr (36) et en (48)
        wp_register_style('immobilier', get_template_directory_uri() . '/dist/secteurs/immobilier.css');
        wp_enqueue_style('immobilier');
    }
}

function innovtheme_register_scripts()
{
    wp_register_script('bootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js', [], false, true);
    wp_enqueue_script('bootstrap');

    wp_register_script('aos', 'https://unpkg.com/aos@next/dist/aos.js', [], false, true);
    wp_enqueue_script('aos');

    wp_register_script('typewritter', 'https://unpkg.com/typewriter-effect@latest/dist/core.js', [], false, true);
    wp_enqueue_script('typewritter');
    wp_register_script('swiper', 'https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js', [], false, true);
    wp_enqueue_script('swiper');


    if (is_front_page()) {
        wp_register_script('purecounter', 'https://cdn.jsdelivr.net/npm/@srexi/purecounterjs/dist/purecounter_vanilla.js', [], false, true);
        wp_enqueue_script('purecounter');

    }
    wp_register_script('common-script', get_template_directory_uri() . '/js/common.js', [], false, true);
    wp_enqueue_script('common-script');
    wp_register_script('loader', get_template_directory_uri() . '/js/loader.js', [], false, true);
    wp_enqueue_script('loader');
    if (is_front_page()) {
        wp_register_script('home', get_template_directory_uri() . '/js/home.js', [], false, true);
        wp_enqueue_script('home');
    }
}

add_action('after_setup_theme', "innovtheme_supports");
add_action('wp_enqueue_scripts', 'innovtheme_register_styles');
add_action('wp_enqueue_scripts', 'innovtheme_register_scripts');


//Theme options
add_theme_support('menus');
//Menus
register_nav_menus(
    [
        'top-menu' => "Top menu location",
    ]
);

//multilingue
function theme_textdomain_setup(){
    load_theme_textdomain('innov', get_template_directory());
}
add_action('after_setup_theme', 'theme_textdomain_setup');

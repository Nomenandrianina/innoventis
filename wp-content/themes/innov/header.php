<!DOCTYPE html>
<html <?php language_attributes() ?>>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php the_title()?> | Innoventis Group</title>
    <?php wp_head() ?>
    <style>
        nav{
            background-color:#1E2F55 !important;
            border:1px solid RGBa(1, 1, 1, 0) ;
            
            font-size: 53px !important;
        }

        nav .content ul.right > li > a {
            text-decoration: none;
            text-transform: uppercase;
            color: #fff;
            font-size: 13px;
            font-weight: 500;
            position: relative;
            padding: 17px 10px;
            position: relative;
        }
        p {
            text-align:justify !important;
        }
        .btn-service{
            border-radius:9px;
            border: 1px solid RGB(46, 204, 113) ;
            background-color: RGB(46, 204, 113) ;
            color:white;    
            width : 70%;
            height : 43px;
            font-size: 12px;
            text-transform : uppercase;
            font-weight: bold;
        }
        .logos_distribution{
            box-shadow: rgba(248, 249, 249, 0.9) 0px 0px 12px 0px;
            background-color:RGBa(248, 249, 249, 0.7)  !important;
            border:0.2px solid RGB(248, 249, 249) ;
            border-radius:9px;
            padding-left:23px;
        }
        sub{
            color: rgb(0, 0, 128)  !important;
            font-size:27px;
            margin-bottom:12px;
        }
        h4{
            color: rgb(0, 0, 128) ; 
        }
        td{
            padding-left: 5%;
        }
        .td_s2{
            padding-left: 9%;
            padding-top : 16px;
        }

        
    </style>
</head>

<body>
	<div id="wptime-plugin-preloader"></div>
    <main>
        <nav class="">
            <div class="content">
                <div class="left">
                    <a href="<?php echo home_url() ?>" class="brand">

                        <div class="images">
                            <img class="default" src="<?php echo get_template_directory_uri() . '/assets/img/logo-white.png' ?>" alt="logo innoventis">
                            <img class="white" src="<?php echo get_template_directory_uri() . '/assets/img/logo-white.png' ?>" alt="logo innoventis">
                        </div>

                    </a>
                </div>
                <div class="cotenant_nav">
                    <?php
                        wp_nav_menu([
                            'theme_location' => 'top-menu',
                            'container' => '',
                            'menu_class' => 'right',
                            'depth' => 0
                        ]);
                    ?>
                </div>
                <div class="mobile-nav">
                    <a class="toggle-menu" data-bs-toggle="offcanvas" href="#offcanvasNav" role="button" aria-controls="offcanvasNav">
                        <i class="bi bi-list"></i>
                    </a>
                    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNav" aria-labelledby="offcanvasNavLabel">
                        <div class="offcanvas-header">
                            <a href="/">
                                <img src="<?php echo get_template_directory_uri() . '/assets/img/logo-default.png' ?>" alt="logo innoventis">
                            </a>
                            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body">

                            <?php
                            wp_nav_menu([
                                'theme_location' => 'top-menu',
                                'container' => '',
                                'depth' => 1
                            ]);
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
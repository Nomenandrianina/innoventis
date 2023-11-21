<?php
/*
Template Name: Negoce et sourcing
*/
?>
<?php get_header() ?>

<section class="hero" style="background-image: url('<?php the_field("couverture") ?>');">
    <img src="<?php the_field("logo") ?>" alt="logo worldorizon">
</section>
<section class="a-propos">
    <div class="top">
        <h1 data-aos="fade-up"><?php the_field("a_propos_titre") ?></h1>
        <h2 data-aos="fade-up" style="text-align:justify !important;">
            <blockquote style="text-align:justify;"><?php the_field("a_propos") ?></blockquote>

        </h2>
    </div>
    <div class="services">
        <div class="item" data-aos="fade-up">
            <img src="<?php the_field("fmgc_image") ?>" alt="produit">
            <h4 style="text-align: center;">
                <?php the_field("fmgc_titre") ?>

            </h4>
            <p style="text-align:justify;">
                <?php the_field("fmgc_descritption") ?>
            </p>
        </div>
        <div class="item" data-aos="fade-up">
            <img src="<?php the_field("sourcing_image") ?>" alt="sourcing">
            <h4 style="text-align: center;">
                <?php the_field("sourcing_titre") ?>

            </h4>
            <p style="text-align:justify;">
                <?php the_field("sourcing_description") ?>
            </p>
        </div>
        <div class="item" data-aos="fade-up">
            <img src="<?php the_field("pneus_image") ?>" alt="sourcing">
            <h4 style="text-align: center;">
                <?php the_field("pneus_titre") ?>

            </h4>
            <p style="text-align:justify;">
                <?php the_field("pneus_description") ?>
            </p>
        </div>
    </div>
</section>
<section class="marques">
    <h1><?php the_field("nos_produits_titre") ?></h1>
    <div class="logos">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/bon-appetit.png' ?>" alt="bon-appetit">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/sav-or.png' ?>" alt="sav-or">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/sunlite.png' ?>" alt="sunlite">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/RANDA.png' ?>" alt="randa">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/aldanamaya.png' ?>" alt="aldanamaya">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/niva.png' ?>" alt="niva">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/maylor.png' ?>" alt="maylor">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/bonjour.png' ?>" alt="bonjour">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/motro.png' ?>" alt="motro">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/xbrite.png' ?>" alt="xbrite">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/miyuki.png' ?>" alt="miyuki">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/roadone.png' ?>" alt="roadone">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/macroyal.png' ?>" alt="macroyal">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/west-lake.png' ?>" alt="west-lake">
    </div>
</section>
<section class="produits">
    
    <div class="slide" data-aos="fade-up">
        <div class="produits-swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <div class="swiper-slide">

                    <a href="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/BA-web.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/BA-web.jpg' ?>" alt="bon appetit">
                    </a>

                </div>

                <div class="swiper-slide">

                    <a href="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/sav-or-web.jpg' ?>" target="_blank">

                        <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/sav-or-web.jpg' ?>" alt="sav'or">
                    </a>
                </div>

                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/Sunlite-web.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/Sunlite-web.jpg' ?>" alt="Sunlite-web">
                    </a>
                </div>

                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/aldanamya-web.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/aldanamya-web.jpg' ?>" alt="aldanamya-web">
                    </a>
                </div>
                <div class="swiper-slide">

                    <a href="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/BA-web.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/BA-web.jpg' ?>" alt="bon appetit">
                    </a>

                </div>

                <div class="swiper-slide">

                    <a href="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/sav-or-web.jpg' ?>" target="_blank">

                        <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/sav-or-web.jpg' ?>" alt="sav'or">
                    </a>
                </div>

                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/Sunlite-web.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/Sunlite-web.jpg' ?>" alt="Sunlite-web">
                    </a>
                </div>

                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/aldanamya-web.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/aldanamya-web.jpg' ?>" alt="aldanamya-web">
                    </a>
                </div>
            </div>

            <!-- If we need navigation buttons 
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div> -->
        </div>
        <!-- If we need pagination -->
        <div class="produits-swiper-pagination"></div>
    </div>
    <div class="btn-section">
        <a href="#">
            <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M4 17.5V19.5C4 20.0304 4.21071 20.5391 4.58579 20.9142C4.96086 21.2893 5.46957 21.5 6 21.5H18C18.5304 21.5 19.0391 21.2893 19.4142 20.9142C19.7893 20.5391 20 20.0304 20 19.5V17.5M7 11.5L12 16.5M12 16.5L17 11.5M12 16.5V4.5" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
            </svg>

            <?php _e("Télécharger le catalogue", 'innov') ?>
        </a>
    </div>
</section>

<section class="marketing">
    <h1><?php the_field("activite_marketing_titre") ?></h1>

    <div class="slide" data-aos="fade-up">
        <div class="marketing-swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <div class="swiper-slide">

                    <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/marketing-1.jpg' ?>" alt="marketing-1">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/about-us.jpg' ?>" alt="about-us">

                </div>
                <div class="swiper-slide">

                    <img src="<?php echo get_site_url() . '/wp-content/uploads/2023/09/Mockup-Bonjour.jpg' ?>" alt="mockup-bonjour">
                    <img src="<?php echo get_site_url() . '/wp-content/uploads/2023/09/Mockup-wana.jpg' ?>" alt="mockup-wana">

                </div>
                <div class="swiper-slide">

                    <img src="<?php echo get_site_url() . '/wp-content/uploads/2023/09/Mockup-BA.jpg' ?>" alt="mockup-ba">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/worldorizon/marketing-1.jpg' ?>" alt="marketing-1">

                </div>

            </div>

            <!-- If we need navigation buttons 
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div> -->
			
        </div>
        <!-- If we need pagination -->
        <div class="marketing-swiper-pagination"></div>
    </div>
</section>
<section class="map">
    <div class="left">
        <h1>
            <?php the_field("distributeur_titre") ?>
        </h1>
        <p style="text-align:justify;">
            <blockquote style="text-align:justify;"><?php the_field("distributeur_description") ?></blockquote> 
        </p>
    </div>
    <img src="<?php the_field("distributeur_image") ?>" alt="map presence" class="right">
</section>

<?php get_template_part('includes/common/section', 'decouvrez-aussi-block'); ?>
<?php get_footer() ?>
<style>
    section.a-propos .services .item img {
        width: 100%;
        border-radius: 20px;
        height: 50%;
    }
    section.marques h1 {
    text-align: center;
    color: #f8311e;
    font-weight: 700;
    margin-bottom: 40px;
    font-size: 59px;
    margin-top: 5vh;
    margin-bottom: 6vh;
}
</style>
<script>
    const produitsSwiper = new Swiper('.produits-swiper', {
        // Optional parameters
        direction: 'horizontal',
        loop: true,
        slidesPerView: 2,
        breakpoints: {
            510: {
                slidesPerView: 3,
            },
            630: {
                slidesPerView: 4,
            }
        },
        autoplay: {
            delay: 4000,
            pauseOnMouseEnter: true
        },

        // If we need pagination
        pagination: {
            el: '.produits-swiper-pagination',
            clickable: true
        },


    });
    const marketingSwiper = new Swiper('.marketing-swiper', {
        // Optional parameters
        direction: 'horizontal',
        loop: true,
        slidesPerView: 1,
        breakpoints: {
            576: {
                slidesPerView: 2,
                direction: 'vertical'
            },
            // 630: {
            //     slidesPerView: 2,
            // }
        },
        autoplay: {
            delay: 4000,
            pauseOnMouseEnter: true
        },

        // If we need pagination
        pagination: {
            el: '.marketing-swiper-pagination',
            clickable: true
        },


    });
</script>
<?php
/*
Template Name: Nos secteurs d'activites
*/
?>
<?php get_header() ?>
<section class="hero">
    <div class="gradient"></div>
    <div class="content">
        <div class="text">
            <h1 class="typewritter"><?php _e("Nos secteurs d'activités", "innov") ?></h1>
            <p>
                <?php _e("Innoventis Group regroupe plusieurs entreprises spécialisées dans des secteurs d'activité variés tels que l'alimentation, la géolocalisation, l'informatique, l'immobilier, le négoce et l'industrie. Nous nous engageons à fournir des produits et services de qualité à nos clients à travers Madagascar et le continent africain.", "innov") ?>
            </p>
        </div>
    </div>
</section>

<section class="secteurs">
    <a href="<?php _e("/secteurs-dactivite/importation-et-distribution/", "innov") ?>" class="item">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/min/import-bg-min.jpg' ?>" alt="">
        <div class="gradient"></div>
        <h2 data-aos="fade-up"><?php _e("Distributon", "innov") ?></h2>
        <span><?php _e("en savoir plus", "innov") ?></span>
    </a>
    <a href="<?php _e("/secteurs-dactivite/industrie", "innov") ?>" class="item">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/min/industrialisation-bg-min.jpg' ?>" alt="">
        <div class="gradient"></div>
        <h2 data-aos="fade-up" data-aos-delay="300"><?php _e("Industrie", "innov") ?></h2>
        <span><?php _e("en savoir plus", "innov") ?></span>
    </a>
    <a href="<?php _e("/secteurs-dactivite/services", "innov") ?>" class="item">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/min/services-bg-min.jpg' ?>" alt="">
        <div class="gradient"></div>
        <h2 data-aos="fade-up"><?php _e("Service", "innov") ?></h2>
        <span><?php _e("en savoir plus", "innov") ?></span>
    </a>
    <a href="<?php _e("/secteurs-dactivite/immobilier", "innov") ?>" class="item">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/min/immobilier-bg-min.jpg' ?>" alt="">
        <div class="gradient"></div>
        <h2 data-aos="fade-up" data-aos-delay="300"><?php _e("Immobilier", "innov") ?></h2>
        <span><?php _e("en savoir plus", "innov") ?></span>
    </a>
    <a href="<?php _e("/secteurs-dactivite/internationalisation", "innov") ?>" class="item">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/min/internationalisation-bg-min.jpg' ?>" alt="">
        <div class="gradient"></div>
        <h2 data-aos="fade-up"><?php _e("Négoce et sourcing", "innov") ?></h2>
        <span><?php _e("en savoir plus", "innov") ?></span>
    </a>
</section>
<?php get_footer() ?>
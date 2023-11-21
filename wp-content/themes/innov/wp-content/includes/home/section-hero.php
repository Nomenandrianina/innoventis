<section class="hero">
    <!-- Slider main container -->
    <div class="swiper">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Slides -->
            <div class="swiper-slide baobab">
                <img src="<?php echo get_template_directory_uri().'/assets/img/mada-baobab.webp'?>" alt="port">
            </div>
            <div class="swiper-slide tree">
                <img src="<?php echo get_template_directory_uri().'/assets/img/tree-desert.webp'?>" alt="port">
            </div>
        </div>
    </div>
    <div class="gradient"></div>
    <div class="content">
        <div class="left">
            <h1 class="typewritter"><?php the_field('slogan'); ?></h1>
            <a href="#activites" data-aos="fade-up"><?php _e("Nos Secteurs d'activités", 'innov') ?> <i class="fa-solid fa-arrow-right"></i></a>
        </div>
        <div class="stat">
            <div class="rect">
                <strong class="text"><?php the_field('titre_statistique'); ?></strong>
            </div>
            <div class="rect">
                <strong class="number" data-purecounter-start="0" data-purecounter-end="<?php the_field('stat_annee'); ?>"><?php the_field('stat_annee'); ?></strong>
                <strong class="text"><?php the_field('stat_annee_titre'); ?></strong>
            </div>
            <div class="rect">
                <strong class="number" data-purecounter-start="0" data-purecounter-end="<?php the_field('stat_collaborateur'); ?>"><?php the_field('stat_collaborateur'); ?></strong>
                <strong class="text"><?php the_field('stat_collaborateur_titre'); ?></strong>
            </div>
            <div class="rect">
                <strong class="number"  data-purecounter-start="0" data-purecounter-end="<?php the_field('stat_client'); ?>"><?php the_field('stat_client'); ?></strong>
                <strong class="text"><?php the_field('stat_client_titre'); ?></strong>
            </div>
        </div>
    </div>
</section>
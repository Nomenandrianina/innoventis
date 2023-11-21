<section class="about-us">
    <div class="square" data-aos="zoom-out-right"></div>
    <div class="content" style="background-image: url('<?php the_field('qui_sommes_nous_photo') ?>');">
        <div>
            <img class="bulb" src="<?php echo get_template_directory_uri() . '/assets/img/bulb.svg' ?>" alt="">
            <?php 
            if (get_field('qui_sommes_nous_photo')) : ?>
                <img data-aos="fade-up" data-aos-anchor-placement="top-center" class="about-us" src="<?php the_field('qui_sommes_nous_photo') ?>" alt="innoventis team">
            <?php endif; ?>
            <div class="text">
                <h2 class="title">
                    <span data-aos="fade-up" data-aos-anchor-placement="top-center"><?php the_field('titre_a_propos_partie_1') ?></span>
                    <span data-aos="fade-up" data-aos-delay="150" data-aos-anchor-placement="top-center" class="nous"><?php the_field('titre_a_propos_partie_2') ?></span>
                </h2>
                <p data-aos="fade-up" data-aos-delay="300" data-aos-anchor-placement="bottom-bottom">
                    <?php the_field('a_propos_du_groupe') ?>
                </p>
                <div class="divider"></div>
            </div>
        </div>
    </div>
</section>
<?php
/*
Template Name: Industrie
*/
?>
<?php get_header() ?>

<section class="mfi" style="background-image: url('<?php the_field('mfi_image_de_fond') ?>');">

    <div class="about">
        <div class="left" data-aos="fade-up">
            <div class='embed-container'>
                <iframe src='https://www.youtube.com/embed/IoAmvaYKo9w' frameborder='0' allowfullscreen></iframe>
            </div>
        </div>
        <div class="right">
            <img src="<?php the_field('mfi_logo') ?>" alt="MFI logo" data-aos="fade-up">
            <p data-aos="fade-up">
                <strong><?php the_field("mfi_slogan") ?></strong> <br><br>
                <?php the_field("mfi_description") ?>
                <br>
                <br>
                <a href="https://web.facebook.com/NouillesWana" target="_blank" title="visiter la page facebook">
                    <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_1093_689)">
                            <path d="M29.9998 15.0918C29.9998 6.75555 23.2836 -0.00195312 14.9998 -0.00195312C6.71234 -7.81249e-05 -0.00390625 6.75555 -0.00390625 15.0937C-0.00390625 22.6255 5.48234 28.8693 12.6523 30.0018V19.4549H8.84609V15.0937H12.6561V11.7655C12.6561 7.98367 14.8967 5.89492 18.3223 5.89492C19.9648 5.89492 21.6805 6.1893 21.6805 6.1893V9.9018H19.7886C17.9267 9.9018 17.3455 11.0662 17.3455 12.2605V15.0918H21.5042L20.8405 19.453H17.3436V29.9999C24.5136 28.8674 29.9998 22.6237 29.9998 15.0918Z" fill="white" />
                        </g>
                        <defs>
                            <clipPath id="clip0_1093_689">
                                <rect width="30" height="30" fill="white" />
                            </clipPath>
                        </defs>
                    </svg>

                </a>
            </p>
        </div>
    </div>
    <div class="slide" data-aos="fade-up">
        <div class="mfi-swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-1.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-1.jpg' ?>" alt="slide-1">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-2.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-2.jpg' ?>" alt="slide-2">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-3.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-3.jpg' ?>" alt="slide-3">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-4.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-4.jpg' ?>" alt="slide-4">
                    </a>
                </div>
                <!--div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-1.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-1.jpg' ?>" alt="slide-1">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-2.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-2.jpg' ?>" alt="slide-2">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-3.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-3.jpg' ?>" alt="slide-3">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-4.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/industrie/slide-4.jpg' ?>" alt="slide-4">
                    </a>
                </div-->
            </div>


            <!-- If we need navigation buttons 
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div> -->
        </div>
        <!-- If we need pagination -->
        <div class="mfi-swiper-pagination"></div>
    </div>
</section>
<section class="oshwal-industrie" style="background-image: url('<?php the_field('oi_image_de_fond') ?>');">
    <div class="about">
        <div class="left">
            <img src="<?php the_field("oshwall_industrie_logo") ?>" alt="oshwal-industrie" data-aos="fade-up">
            <p data-aos="fade-up">
                <strong><?php the_field("oshwall_industrie_slogan") ?></strong> <br><br>
                <?php the_field("oshwall_industrie_description") ?>
            </p>
        </div>
        <div class="right" data-aos="fade-up">
            <h3><?php _e("ILS NOUS FONT CONFIANCE", 'innov') ?></h3>
            <div class="slide">
                <div class="oshwal-swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        <div class="swiper-slide">
                            <div>
                                <div class="top client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/bricoland.jpeg' ?>" alt="bricoland">
                                </div>
                                <div class="bottom client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/coamcat.jpeg' ?>" alt="coamcat">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div>
                                <div class="top client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/chand.jpeg' ?>" alt="chand">
                                </div>
                                <div class="bottom client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/bfm.jpeg' ?>" alt="bfm">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div>
                                <div class="top client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/bricobat.jpeg' ?>" alt="bricobat">
                                </div>
                                <div class="bottom client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/bongou.jpeg' ?>" alt="bongou">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div>
                                <div class="top client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/agricom.jpeg' ?>" alt="agricom">
                                </div>
                                <div class="bottom client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/ceni.jpeg' ?>" alt="ceni">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div>
                                <div class="top client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/brita.jpeg' ?>" alt="brita">
                                </div>
                                <div class="bottom client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/cma.jpeg' ?>" alt="cma">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div>
                                <div class="top client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/galana.jpeg' ?>" alt="galana">
                                </div>
                                <div class="bottom client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/fbf.jpeg' ?>" alt="fbf">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div>
                                <div class="top client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/imra.jpeg' ?>" alt="imra">
                                </div>
                                <div class="bottom client">
                                    <img src="<?php echo get_template_directory_uri() . '/assets/img/oshwal-industrie/smmec.jpeg' ?>" alt="smmec">
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- If we need navigation buttons 
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div> -->
                </div>
                <!-- If we need pagination -->
                <div class="oshwal-swiper-pagination"></div>
            </div>
        </div>
    </div>
</section>

<section class="madaplast"  style="background-image: url('<?php the_field('mdp_image_de_fond') ?>');display: flex; align-items: flex-end;"">
    <div >
        <div style="text-align: left;width: 35% !important;word-wrap: break-word;margin-left: 36px;">
            <img src="<?php the_field("madaplast_logo") ?>" alt="oshwal-industrie" data-aos="fade-up" style="width: 50%">
            <p data-aos="fade-up">
                <strong><?php the_field("madaplast_slogan") ?></strong> <br><br>
                <?php the_field("madaplast_description") ?>
            </p>
        </div>
</section>


<?php get_template_part('includes/common/section', 'decouvrez-aussi-block'); ?>
<?php get_footer() ?>

<style>
section.madaplast {
background-image: url(https://innoventisgroup.com/wp-content/uploads/2023/11/madaplast-1-scaled.jpg);
    display: flex;
    align-items: flex-end;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    padding-bottom: 50vh; 
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    flex-direction: column;
    color: #fff;
}
</style>
<script>
    const mfiSwiper = new Swiper('.mfi-swiper', {
            // Optional parameters
            direction: 'horizontal',
            loop: true,
            slidesPerView: 3,
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
                el: '.mfi-swiper-pagination',
                clickable: true
            },
    
    
        });
        const oshwalSwiper = new Swiper('.oshwal-swiper', {
            // Optional parameters
            direction: 'horizontal',
            // loop: true,
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
                el: '.oshwal-swiper-pagination',
                clickable: true
            },
    
    
        });
    </script>

<?php
/*
Template Name: Distribution
*/
?>
<?php get_header() ?>
<section class="maison-samat" style="background-image: url('<?php the_field('ms_image_de_fond') ?>');">
    <div class="about">
        <div class="left" data-aos="fade-up">
            <div class='embed-container'>
                <iframe src='https://www.youtube.com/embed/Zpv-Tp-CbZw' frameborder='0' allowfullscreen></iframe>
            </div>
        </div>
        <div class="right">
            <div class="text">
                <img src="<?php the_field("ms_logo") ?>" alt="MFI logo" data-aos="fade-up">
                <p data-aos="fade-up">
                    <?php if (get_field("ms_slogan")) : ?>
                        <strong><?php the_field("ms_slogan") ?></strong> <br>
                    <?php endif; ?>

                    <?php the_field("ms_description") ?>

                    <a href="https://web.facebook.com/MSDistributionMada" target="_blank" title="visiter la page facebook">
                        <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g clip-path="url(#clip0_1093_689)">
                                <path d="M29.9998 15.0918C29.9998 6.75555 23.2836 -0.00195312 14.9998 -0.00195312C6.71234 -7.81249e-05 -0.00390625 6.75555 -0.00390625 15.0937C-0.00390625 22.6255 5.48234 28.8693 12.6523 30.0018V19.4549H8.84609V15.0937H12.6561V11.7655C12.6561 7.98367 14.8967 5.89492 18.3223 5.89492C19.9648 5.89492 21.6805 6.1893 21.6805 6.1893V9.9018H19.7886C17.9267 9.9018 17.3455 11.0662 17.3455 12.2605V15.0918H21.5042L20.8405 19.453H17.3436V29.9999C24.5136 28.8674 29.9998 22.6237 29.9998 15.0918Z" fill="blue" />
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
            <div class="logos_distribution">
            <div class="slide">
                <div class="slide">
                    <div class="ms-swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <div class="swiper-slide">
                                <div>
                                    <div class="top marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/bon-appetit.png' ?>" alt="bon-appetit">
                                    </div>
                                    <div class="bottom marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/bonjour.png' ?>" alt="bonjour">
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div>
                                    <div class="top marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/sav-or.png' ?>" alt="sav-or">
                                    </div>
                                    <div class="bottom marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/motro.png' ?>" alt="motro">
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div>
                                    <div class="top marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/sunlite.png' ?>" alt="sunlite">
                                    </div>
                                    <div class="bottom marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/xbrite.png' ?>" alt="xbrite">
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div>
                                    <div class="top marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/RANDA.png' ?>" alt="randa">
                                    </div>
                                    <div class="bottom marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/miyuki.png' ?>" alt="miyuki">
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div>
                                    <div class="top marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/maylor.png' ?>" alt="maylor">
                                    </div>
                                    <div class="bottom marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/west-lake.png' ?>" alt="west-lake">
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div>
                                    <div class="top marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/niva.png' ?>" alt="niva">
                                    </div>
                                    <div class="bottom marque">
                                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/marques/roadone.png' ?>" alt="roadone">
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- If we need navigation buttons 
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div> -->
                    </div>
                    <!-- If we need pagination -->
                    <div class="ms-swiper-pagination"></div>
                </div>
            </div>
            </div>
        </div>
        
    </div>
</section>
<section class="oshwal-trade" style="background-image: url('<?php the_field('ot_image_de_fond') ?>');">
    <div class="about">
        <div class="left">
            <img src="<?php the_field('oshwal_trade_logo') ?>" alt="oshwal-trade" data-aos="fade-up">
            <p data-aos="fade-up">
                <strong><?php the_field("oshwal_trade_slogan") ?></strong> <br><br>
                <?php the_field("oshwal_trade_description") ?>
                <br>
                <br>
                <a href="https://web.facebook.com/Madagascar.oshwaltrade" target="_blank" title="visiter la page facebook">
                    <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_1093_689)">
                            <path d="M29.9998 15.0918C29.9998 6.75555 23.2836 -0.00195312 14.9998 -0.00195312C6.71234 -7.81249e-05 -0.00390625 6.75555 -0.00390625 15.0937C-0.00390625 22.6255 5.48234 28.8693 12.6523 30.0018V19.4549H8.84609V15.0937H12.6561V11.7655C12.6561 7.98367 14.8967 5.89492 18.3223 5.89492C19.9648 5.89492 21.6805 6.1893 21.6805 6.1893V9.9018H19.7886C17.9267 9.9018 17.3455 11.0662 17.3455 12.2605V15.0918H21.5042L20.8405 19.453H17.3436V29.9999C24.5136 28.8674 29.9998 22.6237 29.9998 15.0918Z" fill="blue" />
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
        <div class="right" data-aos="fade-up">
            <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-icons.png' ?>" alt="ot-icons.png">
        </div>
    </div>
    <div class="slide" data-aos="fade-up">
        <div class="ot-swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/1.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/1.jpg' ?>" alt="slide-1">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/2.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/2.jpg' ?>" alt="slide-2">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/3.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/3.jpg' ?>" alt="slide-3">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/4.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/4.jpg' ?>" alt="slide-4">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/5.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/5.jpg' ?>" alt="slide-5">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/6.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/6.jpg' ?>" alt="slide-6">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/7.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/7.jpg' ?>" alt="slide-7">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/8.jpg' ?>" target="_blank">
                        <img src="<?php echo get_template_directory_uri() . '/assets/img/distribution/ot-slides/8.jpg' ?>" alt="slide-8">
                    </a>
                </div>
            </div>


            <!-- If we need navigation buttons 
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div> -->
        </div>
        <!-- If we need pagination -->
        <div class="ot-swiper-pagination"></div>
    </div>
</section>
<?php get_template_part('includes/common/section', 'decouvrez-aussi-block'); ?>
<?php get_footer() ?>
<style>
    section.maison-samat .about .right .text p strong {
        font-size: 16px !important;
    }
    section.oshwal-trade .about .left p strong {
        font-size: 16px;
    }
</style>
<script>
    const msSwiper = new Swiper('.ms-swiper', {
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
            el: '.ms-swiper-pagination',
            clickable: true
        },


    });

    const otSwiper = new Swiper('.ot-swiper', {
        // Optional parameters
        direction: 'horizontal',
        // loop: true,
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
            el: '.ot-swiper-pagination',
            clickable: true
        },


    });
</script>
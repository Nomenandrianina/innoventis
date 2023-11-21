<?php
/*
Template Name: Services
*/
?>
<?php get_header() ?>
<section class="hero" style="background-image: url('<?php the_field("mtec_couverture") ?>');">
    <img src="<?php the_field("mtec_couverture") ?>" alt="M-tec header">
</section>
<section class="main">
    <div class="title">
        <h2><?php the_field('mtec_titre') ?></h2>
        <p>
            <?php the_field('mtec_petite_description') ?>
        </p>
    </div>
    <div class="poles">
        <div class="pole geolocalisation">
        <?php $geoloc = get_field('geolocalisation') ?>
            <div class="content">
                <div class="text">
                    <div class="description">
                        <h2 data-aos="fade-up"><?php echo $geoloc['titre'] ?></h2>
                        <p data-aos="fade-up">
                            <?php echo $geoloc['description'] ?>
                        </p>
                    </div>
                    <div class="services">
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/device-imac.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $geoloc['service_1'] ?></h3>
                                <p>
                                    <?php echo $geoloc['service_1_description'] ?>
                                </p>
                            </div>
                        </div>
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/clock-bolt.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $geoloc['service_2'] ?></h3>
                                <p>
                                    <?php echo $geoloc['service_2_description'] ?>
                                </p>
                            </div>
                        </div>
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/check-one.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $geoloc['service_3'] ?></h3>
                                <p>
                                    <?php echo $geoloc['service_3_dedscription'] ?>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div style="display: flex; align-items: center; justify-content: space-between;">
                        <a href="<?php echo $geoloc['plaquette_commerciale'] ?>" data-aos="fade-up" target="_blank"> 
                            <button type="button" class="btn-service" style="width: 100% !important">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M4 17V19C4 19.5304 4.21071 20.0391 4.58579 20.4142C4.96086 20.7893 5.46957 21 6 21H18C18.5304 21 19.0391 20.7893 19.4142 20.4142C19.7893 20.0391 20 19.5304 20 19V17M7 11L12 16M12 16L17 11M12 16V4" stroke="#2169F3" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                            </svg>

                            Télécharger la plaquette commerciale
                            </button>
                        </a>
                        <a href="https://www.facebook.com/mtecmada?mibextid=rS40aB7S9Ucbxw6v" data-aos="fade-up" target="_blank" title="visiter la page facebook">
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
                    </div>
                    
                </div>
                <div class="image" data-aos="fade-up">
                    <img src="<?php echo $geoloc['image'] ?>" alt="mtec illustration">
                </div>
            </div>
        </div>
        <div class="pole materiel">
        <?php $materiel = get_field('materiel_informatique') ?>
            <div class="content">
                <div class="text">
                    <div class="description">
                        <h2 data-aos="fade-up"><?php echo $materiel['titre'] ?></h2>
                        <p data-aos="fade-up">
                            <?php echo $materiel['description'] ?>
                        </p>
                    </div>
                    <div class="services">
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/shield-check.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $materiel['service_1'] ?></h3>
                                <p>
                                    <?php echo $materiel['service_1_description'] ?>
                                </p>
                            </div>
                        </div>
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/switch-vertical.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $materiel['service_2'] ?></h3>
                                <p>
                                    <?php echo $materiel['service_2_description'] ?>
                                </p>
                            </div>
                        </div>
                    </div>
                    <a href="<?php echo $materiel['plaquette_commerciale'] ?>" data-aos="fade-up" target="_blank">
                        
                        <button type="button" class="btn-service">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4 17V19C4 19.5304 4.21071 20.0391 4.58579 20.4142C4.96086 20.7893 5.46957 21 6 21H18C18.5304 21 19.0391 20.7893 19.4142 20.4142C19.7893 20.0391 20 19.5304 20 19V17M7 11L12 16M12 16L17 11M12 16V4" stroke="#2169F3" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>

                        Télécharger la plaquette commerciale
                        </button>
                    </a>
                </div>
                <div class="image" data-aos="fade-up">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/hp.png' ?>" alt="hp">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/lenovo.png' ?>" alt="lenovo">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/epson.png' ?>" alt="epson">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/lexmark.png' ?>" alt="lexmark">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/eaton.png' ?>" alt="eaton">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/microsoft.png' ?>" alt="microsoft">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/apc.png' ?>" alt="apc">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/netgear.png' ?>" alt="netgear">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/bitdefender.png' ?>" alt="bitdefender">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/aruba.png' ?>" alt="aruba">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/canon.png' ?>" alt="canon">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logos/materiel-info/logitech.png' ?>" alt="logitech">
                </div>
            </div>
        </div>
        <div class="pole securite">
        <?php $securite = get_field('securite') ?>
            <div class="content">
                <div class="text">
                    <div class="description">
                        <h2 data-aos="fade-up"><?php echo $securite['titre'] ?></h2>
                        <p data-aos="fade-up">
                            <?php echo $securite['description'] ?>
                        </p>
                    </div>
                    <div class="services">
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/shield-check.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $securite['service_1'] ?></h3>
                                <p>
                                    <?php echo $securite['service_1_description'] ?>
                                </p>
                            </div>
                        </div>
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/switch-vertical.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $securite['service_2'] ?></h3>
                                <p>
                                    <?php echo $securite['service_2_description'] ?>
                                </p>
                            </div>
                        </div>
                    </div>
                    <a href="<?php echo $securite['plaquette_commerciale'] ?>" data-aos="fade-up" target="_blank">
                        <button type="button" class="btn-service">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4 17V19C4 19.5304 4.21071 20.0391 4.58579 20.4142C4.96086 20.7893 5.46957 21 6 21H18C18.5304 21 19.0391 20.7893 19.4142 20.4142C19.7893 20.0391 20 19.5304 20 19V17M7 11L12 16M12 16L17 11M12 16V4" stroke="#2169F3" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>

                        Télécharger la plaquette commerciale
                        </button>
                    </a>
                </div>
                <div class="image" data-aos="fade-up">
                <img src="<?php echo $securite['image'] ?>" alt="mtec illustration">
                </div>
            </div>
        </div>
        <div class="pole communication">
            <?php $communication = get_field('communication') ?>
            <div class="content">
                <div class="text">
                    <div class="description">
                        <h2 data-aos="fade-up"><?php echo $communication['titre'] ?></h2>
                        <p data-aos="fade-up">
                            <?php echo $communication['description'] ?>
                        </p>
                    </div>
                    <div class="services">
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/pen.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $communication['service_1'] ?></h3>
                                <p>
                                    <?php echo $communication['service_1_description'] ?>
                                </p>
                            </div>
                        </div>
                        <div class="service" data-aos="fade-up">
                            <img src="<?php echo get_template_directory_uri() . '/assets/img/icons/megaphone.svg' ?>" alt="">
                            <div class="text">
                                <h3><?php echo $communication['service_2'] ?></h3>
                                <p>
                                    <?php echo $communication['service_2_description'] ?>
                                </p>
                            </div>
                        </div>
                        <div class="service" data-aos="fade-up">
                          
                        <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 797.2 764" style="enable-background:new 0 0 797.2 764;width: 21%;border-radius: 12px" xml:space="preserve">
<style type="text/css">
	.st0{fill:#A50F69;}
	.st1{fill:#FFFFFF;}
</style>
<path class="st0" d="M705.5,733.6H84.2c-21.9,0-39.7-17.8-39.7-39.7V72.7C44.5,50.8,62.3,33,84.2,33h621.3
	c21.9,0,39.7,17.8,39.7,39.7V694C745.2,715.9,727.4,733.6,705.5,733.6z"/>
<g transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
	<path class="st1" d="M3004.7,10930.2c-307.4-27.5-590.1-163-808.2-387c-179.4-185.3-290.2-400.4-343.1-665.3
		c-18.6-95.3-18.6-366.1,0-461.4c39.4-198,117.6-380.3,229.2-534.3c40.2-55.1,1863.5-1888,1878.4-1888
		c11.9,0,1797.2,1791.3,1839.7,1845.6c165.2,212.8,255.3,442.1,278.3,712.9c25.3,289.5-61.8,602.1-237.4,849.9
		c-64,90-200.9,227.7-291.7,291.7c-388.5,275.4-896,317.8-1320.9,110.9c-75.9-37.2-170.4-95.3-223.3-137.7c-16.4-13.4-33.5-26-38-29
		c-4.5-2.2-43.2,20.1-85.6,50.6c-90.8,65.5-256.8,150.3-355,182.3c-92.3,29.8-195.7,49.9-299.2,59.5
		C3132.7,10939.1,3105.9,10939.1,3004.7,10930.2z M3348.5,10723.3c200.9-43.2,383.3-139.9,536.6-283.5l72.9-69.2l20.1,17.9
		c11.2,9.7,46.1,41.7,78.1,71.4c130.2,120.6,282.1,202.4,464.4,250.8c203.9,54.3,450.2,43.2,649.7-29
		c532.1-192.8,829.8-759.8,686.9-1309.8c-37.2-143.6-98.2-270.1-185.3-384.8c-29-38.7-354.2-369.1-880.4-895.3l-834.2-833.5
		l-834.2,833.5c-535.8,535.8-850.6,855.8-881.1,896c-91.5,121.3-163,282.1-198,447.3c-21.6,103.4-23.8,303.6-4.5,405.6
		c32,165.2,108.6,340.8,201.7,465.1c99.7,133.2,254.5,260.5,401.9,330.4c102,49.1,241.9,90,354.2,104.2
		C3064.3,10748.6,3277.9,10738.2,3348.5,10723.3z"/>
</g>
</svg>
                            <div class="text">
                                <h3><?php echo $communication['service_3'] ?></h3><br>
                                <img style="width:98%; height:98%;" src="<?php echo $communication['service_3_image']?>" alt="simma logo">
                               
                            </div>
                        </div>
                    </div>
                    <a  href="<?php echo $communication['plaquette_commerciale'] ?>" data-aos="fade-up" target="_blank">
                        <button type="button" class="btn-service">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4 17V19C4 19.5304 4.21071 20.0391 4.58579 20.4142C4.96086 20.7893 5.46957 21 6 21H18C18.5304 21 19.0391 20.7893 19.4142 20.4142C19.7893 20.0391 20 19.5304 20 19V17M7 11L12 16M12 16L17 11M12 16V4" stroke="#2169F3" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>

                        Télécharger la plaquette commerciale
                        </button>
                    </a>
                </div>
                <div class="image" data-aos="fade-up">
                    <img src="<?php echo $communication['image'] ?>" alt="it-security illustration" style="margin-bottom: 800px;">
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_template_part('includes/common/section', 'decouvrez-aussi-block'); ?>
<?php get_footer() ?>
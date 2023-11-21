<?php
/*
Template Name: Immobilier
*/
?>
<?php get_header() ?>


<section class="simma" style="background-image: url('<?php the_field('image_de_fond') ?>');">
    <div class="about">
        <div class="left">
            <img src="<?php the_field('logo')  ?>" alt="simma logo">

            <p data-aos="fade-up">
                <strong class="">
                    <?php the_field("slogan") ?>
                </strong>

                <?php the_field("description") ?>
                
            </p>
        </div>
        
    </div>
</section>
    <div style="padding:65px;padding-left:18%;padding-right:18%;">   
        <?php $geoloc = get_field('activiter') ?>
            <div class="content">
                <div class="text">
                    <div class="description">
                        <h2 data-aos="fade-up" style="color:rgb(0, 0, 128)"><?php echo $geoloc['titre'] ?></h2>
                        
                        <p data-aos="fade-up">
                        <?php echo $geoloc['titre_description'] ?>
                        </p>
                    </div>
                    <div class="services">
                        <div class="service" data-aos="fade-up">      
                            <table>
                                <tr>
                                    <td><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0,0,256,256"><g fill-opacity="0.76078" fill="#0e2da6" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(8.53333,8.53333)"><path d="M15,2c-0.26138,0.00002 -0.51237,0.10237 -0.69922,0.28516l-10.9082,8.92187c-0.0126,0.00947 -0.02497,0.01924 -0.03711,0.0293l-0.03711,0.03125v0.00195c-0.20274,0.18887 -0.31802,0.45339 -0.31836,0.73047c0,0.55228 0.44772,1 1,1h1v11c0,1.105 0.895,2 2,2h16c1.105,0 2,-0.895 2,-2v-11h1c0.55228,0 1,-0.44772 1,-1c0.0002,-0.27776 -0.11513,-0.54309 -0.31836,-0.73242l-0.01562,-0.01172c-0.02194,-0.01988 -0.04475,-0.03878 -0.06836,-0.05664l-1.59766,-1.30664v-3.89258c0,-0.552 -0.448,-1 -1,-1h-1c-0.552,0 -1,0.448 -1,1v1.43945l-6.32227,-5.17187c-0.18422,-0.17125 -0.42621,-0.26679 -0.67773,-0.26758zM18,15h4v8h-4z"></path></g></g></svg></td>
                                    <td class="td_s2">
                                        <div class="text">
                                            <h3 style="color:navy"><?php echo $geoloc['activiter_1'] ?></h3>
                                            <p>
                                                <?php echo $geoloc['activiter_description_1'] ?>
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="service" data-aos="fade-up">
                            <table>
                                <tr>
                                    <td><img width="96" height="96" src="https://img.icons8.com/color/96/money-bag-euro.png" alt="money-bag-euro"/></td>
                                    <td class="td_s2">
                                        <div class="text">
                                            <h3 style="color: navy"><?php echo $geoloc['activiter_2'] ?></h3>
                                            <p>
                                                <?php echo $geoloc['activiter_description_2'] ?>
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="service" data-aos="fade-up">
                            <table>
                                <tr>
                                    <td><img width="100" height="100" src="https://img.icons8.com/fluency/100/group-background-selected.png" alt="group-background-selected"/></td>
                                    <td class="td_s2">
                                        <div class="text">
                                            <h3 style="color:navy "><?php echo $geoloc['activiter_3'] ?></h3>
                                            <p>
                                                <?php echo $geoloc['activiter_description_3'] ?>
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <a> 
                        <button type="button" class="btn-service" style="margin-left:25%;margin-top:4%;">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4 17V19C4 19.5304 4.21071 20.0391 4.58579 20.4142C4.96086 20.7893 5.46957 21 6 21H18C18.5304 21 19.0391 20.7893 19.4142 20.4142C19.7893 20.0391 20 19.5304 20 19V17M7 11L12 16M12 16L17 11M12 16V4" stroke="#2169F3" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>

                        Télécharger la plaquette d'activiter
                        </button>   
                    </a>
                </div>
            </div>
        </div>

<?php get_template_part('includes/common/section', 'decouvrez-aussi-block'); ?>
<?php get_footer() ?>
<?php wp_footer() ?>
<?php if (is_front_page()) : ?>
<footer>
    <div>
        <div class="left" style="background-image: url('<?php echo get_template_directory_uri() . '/assets/img/baobab-bg.jpg' ?>');">
            <div class="content">
                <img class="quote-icon" src="<?php echo get_template_directory_uri() . '/assets/img/icons/quote.svg' ?>" alt="">
                <h3><?php the_field('mot_des_administrateurs_titre') ?></h3>
                <div class="divider"></div>
                <p>
                    <?php the_field('mot_des_administrateurs_contenu') ?>
                </p>
            </div>
        </div>
        <div class="right">
            <div class="content">
                <h3>Nos secteurs d'activités</h3>
                <hr>
                <div class="divider"></div>
                <p>
                    <!-- Footer links as a list -->
                    <ul class="footer-links">
                        <li><a href="<?php _e("/secteurs-dactivite/distribution/", 'innov') ?>">Distribution</a></li>
                        <li><a href="<?php _e("/secteurs-dactivite/industrie/", 'innov') ?>">Industries</a></li>
                        <li><a href="<?php _e("/secteurs-dactivite/services/", 'innov') ?>">Services</a></li>
                        <li><a href="<?php _e("/secteurs-dactivite/immobilier/", 'innov') ?>">Immobilier</a></li>
                        <li><a href="<?php _e("/secteurs-dactivite/negoce-et-sourcing/", 'innov') ?>">Négoce et Sourcing</a></li>
                    </ul>
                </p>
            </div>

            
            <div class="contact">
                <a href="/" class="item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/logo-white.png' ?>" alt="logo innoventis groupe">
                </a>
                <hr>
                <strong>Contact</strong>
                <ul>
                    <li><i class="bi bi-telephone-fill"></i><?php the_field('telephone') ?></li>
                    <li>
                        <i class="bi bi-envelope-fill"></i>
                        <a href="mailto:<?php the_field('adresse_mail') ?>"><?php the_field('adresse_mail') ?></a>
                    </li>
                    <li>
                        <i class="bi bi-geo-alt-fill"></i>
                        <?php the_field('adresse') ?>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</footer>
<style>
    .footer-links {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .footer-links li {
        display: inline-block;
        margin-right: 10px; /* Adjust the spacing between list items */
    }

    .footer-links a {
        text-decoration: none;
        color: #fff; /* Text color for the footer links */
        font-size: 14px;
        transition: color 0.3s ease; /* Smooth color transition on hover */
    }

    .footer-links a:hover {
        color: #ff9900; /* Color on hover */
    }


</style>
<?php endif; ?>

<?php if (!is_front_page()) : ?>
    <footer>
    <div>
        <!-- Left Section -->
        <div class="left" style="background-image: url('<?php echo get_template_directory_uri() . '/assets/img/baobab-bg.jpg' ?>');">
            <div class="content">
                <img class="quote-icon" src="<?php echo get_template_directory_uri() . '/assets/img/icons/quote.svg' ?>" alt="">
                <h3>Nos secteurs d'activités</h3>
                <div class="divider"></div>
                <p>
                    <!-- Apply the class directly to the ul -->
                    <ul class="footer-links footer-links-container">
                        <li><a href="<?php _e("/secteurs-dactivite/distribution/", 'innov') ?>">Distribution</a></li>
                        <li><a href="<?php _e("/secteurs-dactivite/industrie/", 'innov') ?>">Industries</a></li>
                        <li><a href="<?php _e("/secteurs-dactivite/services/", 'innov') ?>">Services</a></li>
                        <li><a href="<?php _e("/secteurs-dactivite/immobilier/", 'innov') ?>">Immobilier</a></li>
                        <li><a href="<?php _e("/secteurs-dactivite/negoce-et-sourcing/", 'innov') ?>">Négoce et Sourcing</a></li>
                    </ul>
                    <!-- Add another <ul> as needed -->
                </p>
            </div>
        </div>

        <!-- Right Section -->
        <div class="right">
            <a href="/" class="item">
                <img src="<?php echo get_template_directory_uri() . '/assets/img/logo-white.png' ?>" alt="logo innoventis groupe">
            </a>
            <div class="contact">
                <strong>Contact</strong>
                <ul>
                    <li><i class="bi bi-telephone-fill"></i><?php the_field('telephone') ?></li>
                    <li>
                        <i class="bi bi-envelope-fill"></i>
                        <a href="mailto:<?php the_field('adresse_mail') ?>"><?php the_field('adresse_mail') ?></a>
                    </li>
                    <li>
                        <i class="bi bi-geo-alt-fill"></i>
                        <?php the_field('adresse') ?>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<style>

    .footer-links-container {
        display: flex;
        gap: 60px; /* Ajustez cet espace en fonction de vos besoins */
        flex-wrap: wrap;
        list-style: none;
        padding: 0;
    }

    .footer-links-container li {
        margin-bottom: 10px; /* Ajustez cet espace en fonction de vos besoins */
    }

    .footer-links-container a {
        text-decoration: none;
        color: #333; /* Couleur du texte */
        font-weight: bold;
        transition: color 0.3s ease; /* Transition de couleur au survol */
    }

    .footer-links-container a:hover {
        color: #ff6600; /* Couleur du texte au survol */
    }

    /* Autres styles que vous pouvez ajuster selon vos préférences */
    .footer-links-container h3 {
        font-size: 1.2em;
        color: #fff; /* Couleur du titre */
    }

    .footer-links-container .divider {
        height: 2px;
        background-color: #fff; /* Couleur de la ligne de séparation */
        margin: 10px 0;
    }

    .footer-links-container img.quote-icon {
        width: 24px; /* Ajustez la taille de l'icône */
        height: auto;
        margin-right: 5px;
    }

    .footer-links-container ul {
        padding: 0;
        margin: 0;
    }

    .footer-links-container li {
        margin-bottom: 8px;
    }

    .footer-links-container li a {
        color: #fff; /* Couleur du texte */
        text-decoration: none;
        transition: color 0.3s ease; /* Transition de couleur au survol */
    }

    .footer-links-container li a:hover {
        color: #ff6600; /* Couleur du texte au survol */
    }

    footer > div .right .contact {
        margin-top: 8vh !important;
    }

    footer > div .right {
        max-width: 500px;
        width: 100%;
        padding: 19px 4% !important;
    }

    footer > div .left .content {
        padding: 3%;
        padding-bottom: 3%;
        /* padding-top: 7%; */
        padding-bottom: 7%;
        position: relative;
        max-width: 1000px;
        margin: auto;
    }
</style>

<?php endif; ?>

</main>
</body>

</html>


<?php  
/*
 * ARCHIVO PARTIAL QUE MUESTRA EL BANNER HACIA EL CONTACTO
 */

$page_required = get_page_by_title('Contacto');
$banner_link   = !empty($page_required) ? get_permalink($page_required) : '#'; ?>

<section id="sectionBannerPage" class="relative">

	<div class="flexible flexible-wrap justify-center text-xs-center align-items-center content-text">

		<!-- Titulo -->
		<h2 class="text-uppercase"> 
		<?= __("consulte acerca de nuestros servicios" , LANG ); ?></h2>

		<!-- Boton -->
		<a href="<?= $banner_link; ?>" class="btn-show-more btn-show-more--white text-uppercase"> click aquí </a>

	</div> <!-- /.content-text -->

</section> <!-- /.sectionBannerPage -->
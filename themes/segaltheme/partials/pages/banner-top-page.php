<?php  
/*
 * Archivo que incluye el banner top de la página 
 */

/*
 * Variables
 */

//El banner
$the_banner = isset($banner) && !empty($banner) ? $banner : get_queried_object();

//El título
$the_title = isset($banner_title) && !empty($banner_title) ? $banner_title : $the_banner->post_title;


/*
 * Renderizando el banner
 */ ?>

<!-- Banner top de Página -->
<section id="section-banner-top" class="relative">

	<!-- Imagen -->
	<img src="<?= get_banner_page( $the_banner->ID ) ?>" alt="<?= $banner->post_name; ?>" class="img-fluid d-block m-x-auto" />
	
	<!-- Título -->
	<h2 class="title-page text-uppercase"> 
		<?= __( $the_title , 'LANG' ); ?> 
	</h2>

</section> <!-- /.section-banner-top -->





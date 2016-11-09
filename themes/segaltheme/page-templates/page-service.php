<?php 
/* Template Name: Page Servicios Template */

/*
 * Objecto Actual
 */
global $post;

/*
 * Mostrar Header
 */
get_header();

/*
 * Obtener todos los Servicios
 */
$args = array(
	'meta_key'       => 'mbox_order_post',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'post_type'      => 'theme-services',
	'posts_per_page' => -1, );

$services = get_posts( $args );

/*
 * Opciones de Personalización
 */

$options = get_option("theme_settings"); 

/*
 * Variable para Template banner de página
 */ 
$banner = $post;
$path_banner = realpath(dirname(dirname(__FILE__)) . '/partials/pages/banner-top-page.php' );
if(stream_resolve_include_path($path_banner)) include($path_banner);  ?>


<!-- Layout de Página -->
<main class="pageContentLayout">
	
	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<?php if( count($services) > 0 ): ?>

			<?php foreach( $services as $service ): 

			//Imágen
			$image_url = has_post_thumbnail($service->ID) ? wp_get_attachment_url( get_post_thumbnail_id($service->ID) ) : IMAGES . '/default-post.jpg';

			//Image Alt
			$image_alt = has_post_thumbnail($service->ID) ? get_post_meta( get_post_thumbnail_id($service->ID) , '_wp_attachment_image_alt' , true ) : $service->post_name;

			$this_permalink = get_permalink($service->ID);  ?>

				<!-- Article / Service -->
				<article class="itemServicePreview itemServicePreview--box relative pull-xs-left">
							
					<!-- Imagen -->
					<figure class="featured-image">

						<a href="<?= $this_permalink; ?>" title="<?= $service->post_title; ?>">

							<img src="<?= $image_url; ?>" alt="<?= $image_alt; ?>" class="img-fluid d-block m-x-auto">

						</a> <!-- / -->
					</figure>

					<!-- CONTENEDOR DE TEXTO -->
					<div class="container-text text-xs-center">
								
						<!-- Nombre -->
						<h2 class="text-capitalize"> <?= $service->post_title; ?> </h2>

						<!-- Extracto -->
						<p class="excerpt"> <?= $service->post_excerpt; ?> </p>
								
						<!-- Botón -->
						<a href="<?= $this_permalink; ?>" class="btn-show-more text-uppercase">leer más</a>
								
					</div> <!-- /.container-text -->

				</article> <!--  -->

			<?php endforeach; ?>

			<!-- Float --> <div class="clearfix"></div>

		<?php endif; ?>

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /. -->

<!-- Footer -->
<?php get_footer(); ?>
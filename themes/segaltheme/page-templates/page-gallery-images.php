<?php  
/* Template Name: Página Galería Imágenes */

/*
 * Objecto Actual
 */
global $post;

/*
 * Mostrar Header
 */
get_header();

/*
 * Opciones de Personalización
 */

$options = get_option("theme_settings");

/*
*  Attributos disponibles Carousel
* data-items = number , data-items-responsive = number_mobile ,
* data-margins = margin_in_pixels , data-dots = true or false 
* data autoplay = true or false
*/

/*
 * Obtener galería de Imágenes
 */
$args = array(
	'meta_key'       => 'mbox_order_post',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'post_status'    => 'publish',
	'post_type'      => 'theme-gallery-images',
	'posts_per_page' => -1, 
	'meta_query'     => array(
		array( 'key' => '_thumbnail_id', 'compare' => 'EXISTS' )
	) );

$galería_photos = get_posts( $args ); ?>

<!-- Layout de Página -->
<main class="pageContentLayout">

	<!-- Wrapper de Contenido -->
	<div class="wrapperLayoutPage">


		<?php if( count($galería_photos) > 0 ): ?>

			<?php  $i_x_section = 6;
			/*
			 * Si el número de items es mayor al número de items 
			 * por seccion entonces podremos 
			 * hacer galerría sino simplemente mostrar fotos
			 */
			if( count($galería_photos) > $i_x_section ) : ?>

				<div id="carousel-gallery-theme" class="section__single_gallery js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="14" data-dots="true" data-autoplay="false">

				<?php $control = 0; 
				foreach( $galería_photos as $photo ) : ?>

					<?php if( $control % $i_x_section === 0 ) : ?>
					<!-- Open row --> <div class="flexible flexible-wrap"> <?php endif; ?>

					<!-- Artículo o Item de Photo -->
					<article class="itemMultimedia">
						<?php $url_image = wp_get_attachment_url( get_post_thumbnail_id( $photo->ID ) ); ?>	
					
						<a href="<?= $url_image; ?>" class="gallery-fancybox" title="<?= $photo->post_title; ?>">
							<?= get_the_post_thumbnail( $photo->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
						</a>
					</article> <!-- /.itemMultimedia -->

					<?php if( $control + 1 == count($galería_photos) || $control !== 0 && ($control+1) % $i_x_section === 0 ) : ?>
						</div> <!-- /end of row -->
					<?php endif; ?>
				
				<?php $control++; endforeach; ?>

				</div> <!-- /#carousel-gallery-theme -->

				<!-- Paginador / Control Slider -->
				<section class="sectionPagination text-xs-center">
					<?php 
						$max_num_pages = count($galería_photos) / $i_x_section;
						for( $i=0 ; $i<$max_num_pages ; $i++ ){  ?>

					<a href="#" data-slider="carousel-gallery-theme" data-to="<?= $i ?>" class="js-carousel-indicator"> <?= $i+1 ?> </a>

					<?php } ?>
				</section> <!-- /.sectionPagination -->

			<?php else: ?>

				<div class="flexible flexible-wrap">

					<?php foreach( $galería_photos as $photo ) : ?>

					<!-- Artículo o Item de Photo -->
					<article class="itemMultimedia">
						<?php $url_image = wp_get_attachment_url( get_post_thumbnail_id( $photo->ID ) ); ?>	
					
						<a href="<?= $url_image; ?>" class="gallery-fancybox" title="<?= $photo->post_title; ?>">
							<?= get_the_post_thumbnail( $photo->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
						</a>
					</article> <!-- /.itemMultimedia -->
				
					<?php endforeach; ?>
					
				</div> <!-- /.flexible flexible-wrap -->

			<?php endif; ?>

		<?php else: ?>

		<?php endif; ?>


	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageWrapper -->


<!-- Footer -->
<?php get_footer(); ?>

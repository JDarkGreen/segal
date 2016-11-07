<?php 
/* Template Name: Page Nosotros Template */

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
 * Variable para Template banner de página
 */ ?>

<!-- Layout de Página -->
<main class="pageContentLayout">

	<!-- Espacios --> <br/><br/>
	
	<!-- Wrapper de Contenido -->
	<div class="wrapperLayoutPage">

		<!-- Contenedor Flexible -->
		<div class="flexible space-between">
			
			<!-- SECCION DE CONTENIDO -->
			<section class="pageNosotros__item">
				
				<!-- 1.- Contenido de Nosotros -->
				<section>
					<?= apply_filters( "the_content" , $post->post_content ); ?>
				</section>

			</section> <!-- /.pageNosotros__item -->

			<!-- SECCION DE GALERÍA -->
			<section class="pageNosotros__item relative">
				
				<!-- Contenedor de Galería [ ] -->
				<?php  
					/*
					*  Attributos disponibles 
					* data-items = number , data-items-responsive = number_mobile ,
					* data-margins = margin_in_pixels , data-dots = true or false 
					*data autoplay = true or false
					*/  

					$gallery_nosotros = get_gallery_post( $post->ID );

					if( count($gallery_nosotros) >= 2 ) : ?>

				<div id="carousel-nosotros-theme" class="section__single_gallery js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="5" data-dots="true" data-autoplay="true">

					<?php foreach($gallery_nosotros as $item ): ?>
					<!-- Artículo -->
						<article>
							<!-- Imagen fancybox -->
							<a href="<?= $item->guid; ?>" class="gallery-fancybox">
								<figure><img src="<?= $item->guid; ?>" alt="<?= $item->post_title; ?>" class="img-fluid" /></figure>
							</a> <!-- /.gallery-fancybox -->
						</article> <!-- /.item-nosotros -->
					<?php endforeach; ?>
				</div> <!-- /.section__single_gallery -->

				<!-- Indicadores de Galería - Personalizado -->
				<section class="gallery_indicators text-xs-center">
					<?php for ($i=0; $i < count($gallery_nosotros) ; $i++) { ?>

					<a href="#" data-slider="carousel-nosotros-theme" data-to="<?= $i; ?>" class="gallery_indicator js-carousel-indicator <?= $i == 0 ? 'active' : ''  ?>"></a>
	
					<?php  } ?> 	

				</section> <!-- /.gallery_indicators -->

				<?php elseif ( count($gallery_nosotros) == 1 ) : ?>

					<img src="<?= $gallery_nosotros[0]->guid; ?>" alt="<?= $gallery_nosotros[0]->post_title; ?>" class="img-fluid" />

				<?php endif; ?>
				
			</section> <!-- /.pageNosotros__item -->

		</div> <!-- /.containerFlex containerSpaceBetween -->

		
		<!-- Espacio --> <br/><br/>

		<!-- 2.- NUESTRAS MARCAS -->
		<?php 

			$path_marcas = realpath( dirname(dirname(__FILE__)) . '/partials/common-section/section-marcas-empresa.php' );

			if( stream_resolve_include_path($path_marcas) ) 
			include($path_marcas); ?>
		
	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageWrapper -->


<!-- Footer -->
<?php get_footer(); ?>


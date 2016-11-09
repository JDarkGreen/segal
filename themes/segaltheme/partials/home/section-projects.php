<?php 
/*
 * Obtener Todos los Trabajos Realizados
 */

$args = array(
	'meta_key'       => 'mbox_order_post',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'post_status'    => 'publish',
	'post_type'      => 'theme-projects',
	'posts_per_page' => -1,  ); 

$projects = get_posts( $args ); 

/* Página de Projectos */
$page_project = get_page_by_title('trabajos realizados');
$page_link = !empty($page_project) ? get_permalink($page_project->ID) : '#';   ?>

<section id="sectionInicioProjects">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<!-- Título -->
		<h2 class="titleOfSection text-xs-center"> <span> <?= __( 'Trabajos Realizados' , LANG ); ?> </span> </h2>

		<?php if( count($projects) > 1 ): ?>

		<!-- Carousel  -->
		<div id="carousel-single-project" class="section__single_gallery js-carousel-gallery" data-items="4" data-items-responsive="1" data-margins="10" data-dots="false" data-autoplay="true" data-timeautoplay="5000">

			<?php foreach($projects as $project ): ?> 

				<!-- Item preview de Projecto -->
				<article class="itemProjectPreview">
					
					<!-- Imagen -->
					<?php  
					$feat_img = wp_get_attachment_url( get_post_thumbnail_id( $project->ID ) );
					$alt_img  = get_post_meta( get_post_thumbnail_id( $project->ID ) , '_wp_attachment_image_alt' , true );
					$alt_img  = !empty($alt_img) ? $alt_img : $project->post_name; ?>

					<figure class="featured-image">
						<a href="<?= get_permalink( $project->ID ); ?>" title="<?= $project->post_title; ?>">
							<img src="<?= $feat_img; ?>" alt="<?= $alt_img; ?>" class="img-fluid d-block m-x-auto" />
						</a> <!-- / -->
					</figure>

					<!-- CONTENEDOR DE TEXTO -->
					<div class="container-text text-xs-center">
						
						<!-- Nombre -->
						<h2 class="text-capitalize"><?= $project->post_title; ?></h2>

						<!-- Extracto -->
						<p class="excerpt"> <?= $project->post_excerpt; ?> </p>
						
					</div> <!-- /.container-text -->

				</article> <!-- /.itemServicePreview -->

			<?php endforeach; ?>

		</div> <!-- /carousel-single-services -->

		<?php endif; ?>

		<!-- Espacio --> <br />

		<!-- Botón -->
		<a href="<?= $page_link; ?>" class="btn-show-more text-uppercase pull-xs-right">
		<?= __( 'ver más' , LANG ); ?> </a>

		<!-- Limpiar Floats --> <div class="clearfix"></div>

	</div><!-- /. -->
	
</section> <!-- /#sectionInicioProjects -->
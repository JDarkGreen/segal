<?php 
/* Template Name: Page Blog Template */

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
 * Obtener las entradas del blog
 */
$paged = get_query_var("paged") ? get_query_var("paged") : 1;
$posts_per_page = 4;

$args = array(
	'order'          => 'DESC',
	'orderby'        => 'modified',
	'paged'          => $paged,
	'post_status'    => 'publish',
	'post_type'      => 'post',
	'posts_per_page' => $posts_per_page, );

$the_query = new WP_Query( $args ); 

/*
 * Variable para Template banner de página
 */ ?>

<!-- Layout de Página -->
<main class="pageContentLayout">

	<!-- Espacios --> <br /><br />

	<!-- Wrapper de Contenido -->
	<div class="wrapperLayoutPage">
		
		<div class="row">
			
			<!-- Preview de Post -->
			<div class="col-xs-12 col-sm-8">
				
				<section class="previewPosts">

				<?php if($the_query->have_posts()): ?>

					<?php while($the_query->have_posts()): $the_query->the_post(); ?>

					<article class="PreviewPost">

						<div class="row">
							
							<!-- imágen -->
							<div class="col-xs-12 col-sm-4">
								<figure>
									<a href="<?= get_the_permalink(); ?>">

									<?php  
										$url_image = has_post_thumbnail() ? wp_get_attachment_url( get_post_thumbnail_id( get_the_ID() ) ) : IMAGES . '/default-image.jpg'; 

										$description = get_post_meta( get_post_thumbnail_id( get_the_ID() ) , '_wp_attachment_image_alt' , true );
										$description = !empty($description) ? $description: get_the_title(); ?>
									
										<img src="<?= $url_image ?>" alt="<?= $description ?>" class="img-fluid d-block m-x-auto" />

									</a>
								</figure>
							</div> <!-- /. -->

							<!-- contenido -->
							<div class="col-xs-12 col-sm-8">
								
								<!-- Título -->
								<h3 class="text-uppercase"><?= get_the_title(); ?></h3>

								<!-- Extracto -->
								<p>
									<?php  
										$content = wp_strip_all_tags( get_the_content() );
										#limite palabras
										$limit_words = 40;
										#Mostrar palabras
										echo wp_trim_words( $content , $limit_words , '...' ); ?>
								</p>

								<?php  
								/* 
								 * Incluir Partial Compartir Post
								 */
								$path_share_post = realpath( dirname(dirname(__FILE__)) . '/partials/single/shared-post.php' );
								if( stream_resolve_include_path($path_share_post) )
								include($path_share_post) ?>

								<!-- Limpiar floats --> <div class="clearfix"></div>

							</div> <!-- /.col-xs-12 col-sm-8 -->

						</div> <!-- /.row -->
						
					</article> <!-- /.PreviewPost -->

					<?php endwhile; ?>
					
					<!-- Paginación aquí -->
					<section class="sectionPagination text-xs-center">

						<?php $max_pages = $the_query->max_num_pages; ?>
						
						<?php for( $i = 1 ; $i <= $max_pages ; $i++ ) { ?>
						
						<!-- Link -->
						<a href="<?= get_pagenum_link($i); ?>" class="<?= $paged == $i ? 'active' : '' ?>"> <?= $i ?></a>

						<?php } ?>
						
						<!-- Next -->
						<a href="<?= get_pagenum_link($paged+1); ?>" class="<?= $paged == $max_pages ? 'disabled' : '' ?>" role="button" aria-disabled="<?= $paged == $max_pages ? 'true' : '' ?>">
							<!-- Icon --><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</a>
						
					</section> <!-- /.sectionPagination -->


				<?php else: ?>

					<div class="alert alert-danger alert-dismissible fade in" role="alert">
					 	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    	<span aria-hidden="true">&times;</span>
					  	</button>
					  	<strong>Ops! Lo sentimos </strong> Por el momento el contenido está en mantenimiento , puedes visitar nuestras otras secciones. Gracias!
					</div>

				<?php endif; wp_reset_postdata(); ?>
					
				</section> <!-- /.previewPosts -->

			</div> <!-- /.col-xs-12.col-sm-8 -->	

			<!--  -->		
			<aside class="col-xs-12 col-sm-4">

				<?php 
				/*
				 * Incluir Template de Categorias de Post
				 */
				$path_cats_post = realpath(dirname(dirname(__FILE__)) . '/partials/sidebar/categories-post.php');
				if(stream_resolve_include_path($path_cats_post))
				include($path_cats_post);  ?>
				
			</aside> <!-- /.col-xs-12.col-sm-4 -->

		</div> <!-- /.row -->
		
	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageWrapper -->


<!-- Footer -->
<?php get_footer(); ?>


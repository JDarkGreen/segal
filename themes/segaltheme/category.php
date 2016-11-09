<?php 
/* Plantilla Name: Category Php */

/*
 * Objecto Actual
 */
$current_object = get_queried_object();

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
	'cat'            => $current_object->term_id,
	'order'          => 'DESC',
	'orderby'        => 'modified',
	'paged'          => $paged,
	'post_status'    => 'publish',
	'post_type'      => 'post',
	'posts_per_page' => $posts_per_page, );

$the_query = new WP_Query( $args ); 

/*
 * Variable para Template banner de página
 */ 

$banner = get_page_by_title('blog');
$path_banner = 'partials/pages/banner-top-page.php';
if(stream_resolve_include_path($path_banner)) include($path_banner); ?>


<!-- Layout de Página -->
<main class="pageContentLayout">

	<!-- Espacios --> <br /><br />

	<!-- Wrapper de Contenido -->
	<div class="wrapperLayoutPage">
		
		<div class="row">
			
			<!-- Preview de Post -->
			<div class="col-xs-12 col-sm-8">
				
				<section class="previewPosts">

				<!-- Título -->
				<h2 class="text-uppercase titleOfSection">
					<span> <?= $current_object->name; ?> </span>
				</h2>

				<?php if($the_query->have_posts()): ?>

					<?php while($the_query->have_posts()): $the_query->the_post(); 

					$image_url = has_post_thumbnail() ? wp_get_attachment_url( get_post_thumbnail_id() ) : IMAGES . '/default-post.jpg';

					$image_alt = has_post_thumbnail() ? get_post_meta( get_post_thumbnail_id() , '_wp_attachment_image_alt' , true ) : get_the_title();	?>

					<!-- Article Preview -->
					<article class="PreviewPost PreviewPost--box-page">

						<!-- Imagen -->
						<figure class="featured-image">
							<a href="<?= get_permalink(); ?>" title="<?= get_the_title(); ?>">
								<img src="<?= $image_url; ?>" alt="<?= $image_alt ?>" class="img-fluid m-x-auto d-block" />
							</a>
						</figure> <!-- /. -->

						<!-- Título -->
						<h2> <?= get_the_title(); ?> </h2>

						<!-- Extracto -->
						<?php 
							$limit_words = 35;

							$content     = wp_strip_all_tags( get_the_content() );
							$content     = apply_filters( 'the_content' , $content  );
							$content     = array_slice( explode(' ' , $content ) , 0 , $limit_words );
							$content     = implode( ' ' , $content ) . '...<br/>';

							echo $content;  ?>
						
						<!-- Limpiar floats --> <div class="clearfix"></div>

						<a href="<?= get_permalink(); ?>" class="read-more"> Leer Más </a>
						
					</article> <!-- /.PreviewPost -->

					<?php endwhile; ?>
					
					<!-- Limpiar Float -->
					<div class="clearfix"></div>
					
					<!-- Paginación aquí -->
					<section class="sectionPagination text-xs-center">

						<?php $max_pages = $the_query->max_num_pages; ?>
						
						<?php for( $i = 1 ; $i <= $max_pages ; $i++ ) { ?>
						
						<!-- Link -->
						<a href="<?= get_pagenum_link($i); ?>" class="<?= $paged == $i ? 'active' : '' ?>"> <?= $i ?></a>

						<?php } ?>
						
						<!-- Next -->
						<a href="<?= get_pagenum_link($paged+1); ?>" class="arrow-paginator <?= $paged == $max_pages ? 'disabled' : '' ?>" role="button" aria-disabled="<?= $paged == $max_pages ? 'true' : '' ?>" tabindex="<?= $paged == $max_pages ? -1 : '' ?>">

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
				$path_cats_post = 'partials/sidebar/categories-post.php';
				if(stream_resolve_include_path($path_cats_post))
				include($path_cats_post);  ?>
				
			</aside> <!-- /.col-xs-12.col-sm-4 -->

		</div> <!-- /.row -->
		
	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageWrapper -->


<!-- Footer -->
<?php get_footer(); ?>


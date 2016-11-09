<?php 
/* Plantilla Name: Single Php */

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
				
				<article class="singleDetailPost">

					<!-- Título -->
					<h2 class="titleOfSection titleOfSection--left text-uppercase">
						<span><?= $post->post_title; ?></span>
					</h2>

					<?php  
						$url_image = has_post_thumbnail() ? wp_get_attachment_url( get_post_thumbnail_id( get_the_ID() ) ) : IMAGES . '/default-post.jpg'; 

						$description = get_post_meta( get_post_thumbnail_id( get_the_ID() ) , '_wp_attachment_image_alt' , true );
						$description = !empty($description) ? $description: get_the_title(); ?>
					
						<figure class="featured-image">
							<img src="<?= $url_image ?>" alt="<?= $description ?>" class="img-fluid d-block" />
						</figure>	

						<?= apply_filters( 'the_content' , $post->post_content ); ?>
					
				</article> <!-- /.singleDetailPost -->

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


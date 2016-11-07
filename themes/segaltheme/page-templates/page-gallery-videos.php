<?php  
/* Template Name: Página Galería Videos */

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
 * Obtener galería de Videos
 */
$args = array(
	'meta_key'       => 'mbox_order_post',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'post_status'    => 'publish',
	'post_type'      => 'theme-gallery-videos',
	'posts_per_page' => -1, );

$galería_videos = get_posts( $args ); ?>

<!-- Layout de Página -->
<main class="pageContentLayout">

	<!-- Wrapper de Contenido -->
	<div class="wrapperLayoutPage">


		<?php if( count($galería_videos) > 0 ): ?>

			<?php 
			if( isset($galería_videos[0]) && getidYoutube($galería_videos[0]->post_content) ):
			$link_video =  getidYoutube($galería_videos[0]->post_content);  ?>
			
			<article class="itemVideo itemVideo--master">
				<!-- Título --> <h2 class=""> <?= $galería_videos[0]->post_title; ?></h2>

				<div class="video-youtube" id="<?= $link_video; ?>" style="width: 100%;height:600px;"></div>

			</article> <!-- /.itemVideoYoutube itemVideoMaster -->

			<?php endif; ?>
			
			<!--  Espacio --> <br/><br/>

			<div class="flexible flexible-wrap">
				
				<?php foreach($galería_videos as $video) : ?>

					<?php if( getidYoutube($video->post_content) ): 
					$link_video =  getidYoutube($video->post_content); ?>

					<!-- Artículo -->
					<article class="itemVideo">
						
						<!-- Título --> 
						<h2 class=""> <?= $galería_videos[0]->post_title; ?></h2>
					
						<div class="video-youtube" id="<?= $link_video; ?>" style="width: 100%;height:180px;"></div>

					</article> <!-- /. -->
					<?php endif; ?>

				<?php endforeach; ?>

			</div> <!-- /.flexible flexible-wrap -->
		
		<?php else: ?>

		<?php endif; ?>


	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageWrapper -->


<!-- Footer -->
<?php get_footer(); ?>

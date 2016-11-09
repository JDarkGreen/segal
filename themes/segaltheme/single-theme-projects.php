<?php 
/*
 * Template File : Single Theme Projects
 */

/*
 * Objeto actual
 */
global $post;

/*
 * Obtener Header
 */
get_header(); 

/*
 * Extraer opciones del tema
 */
$options = get_option("theme_settings");


/*
 * Variable para Template banner de página
 */ 
$page_project = get_page_by_title('trabajos realizados');
$banner         = $page_project;
$path_banner    = 'partials/pages/banner-top-page.php';

if(stream_resolve_include_path($path_banner)) include($path_banner); ?>

<article class="singleDetailProject relative">
	
	<!-- Layout -->
	<div class="wrapperLayoutPage">
	
		<!-- Imágen -->
		<?php $img_url = wp_get_attachment_url( get_post_thumbnail_id(  $post->ID ) ); ?>

		<div class="row">

			<div class="col-xs-12 col-sm-6">
				<?= get_the_post_thumbnail( $post->ID , 'full' , array('class'=>'img-fluid m-x-auto d-block') ); ?>
				
				<!-- Espacio en mobile --> <br class="hidden-sm-up" />

			</div> <!-- /.col-xs-12 col-sm-6 -->
			
			<!-- Contenido o Información de Página -->
			<div class="col-xs-12 col-sm-6">
			
				<div class="container-text">

					<!-- Título -->
					<h2 class="titleOfSection text-xs-center"> <span> <?= $post->post_title; ?> </span> </h2>

					<!-- Espacio --> <br/>

					<!-- Información -->
					<?= apply_filters( 'the_content' , $post->post_content ); ?>

					<!-- Espacio --> <br/>

					<!-- Boton ver servicios -->
					<div class="text-xs-center">
						<a href="<?= get_permalink($page_project->ID) ?>" class="btn-show-more text-uppercase"> ver projectos </a>
					</div> <!-- /. -->

				</div> <!-- /.container-text -->

			</div> <!-- /.col-xs-12 col-sm-6 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->

</article> <!-- /.singleDetailProject -->

<!-- Linea Separadora -->
<div id="separator-line"></div>


<!-- Footer -->
<?php get_footer(); ?>

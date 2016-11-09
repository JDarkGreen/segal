<?php 
/*
 * Template File : Single Theme Services
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
$page_servicios = get_page_by_title('Servicios');
$banner         = $page_servicios;
$path_banner    = 'partials/pages/banner-top-page.php';

if(stream_resolve_include_path($path_banner)) include($path_banner); ?>

<article class="singleDetailService relative">
	
	<!-- Layout -->
	<div class="wrapperLayoutPage">
	
		<!-- Imágen -->
		<?php $img_url = wp_get_attachment_url( get_post_thumbnail_id(  $post->ID ) ); ?>

		<div class="row">

			<div class="col-xs-12 col-sm-6">
				<?= get_the_post_thumbnail( $post->ID , 'full' , array('class'=>'img-fluid m-x-auto d-block') ); ?>
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
						<a href="<?= get_permalink($page_servicios->ID) ?>" class="btn-show-more text-uppercase"> ver servicios </a>
					</div> <!-- /. -->

				</div> <!-- /.container-text -->

			</div> <!-- /.col-xs-12 col-sm-6 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->

</article> <!-- /.singleDetailService -->

<!-- Linea Separadora -->
<div id="separator-line"></div>


<!-- Footer -->
<?php get_footer(); ?>

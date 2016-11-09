<?php  
/*
 * Template Parcial que muestra 
 * contenido de la página Nosotros
 */

/*
 * Obtener Página de Nosotros
 */
$page_nosotros = get_page_by_title('Nosotros');

//Link de Página
$page_link = !empty($page_nosotros) ? get_permalink($page_nosotros->ID) : '#';

/*
 * Extraer opciones del tema
 */
$options = get_option("theme_settings"); ?>

<?php if( $page_nosotros ) : 

/*
 * Atributos de la página
 */ 
$texto = $page_nosotros->post_content;

$image_featured = has_post_thumbnail($page_nosotros->ID) ? wp_get_attachment_url(get_post_thumbnail_id($page_nosotros->ID) ) : IMAGES . '/backgrounds/nosotros_segal_construccion.jpg';

$image_alt = has_post_thumbnail($page_nosotros->ID) ? get_post_meta( get_post_thumbnail_id($page_nosotros->ID), '_wp_attachment_image_alt' , true ) : $page_nosotros->post_name;

?>

<!-- Section -->
<section id="sectionAboutUs">

	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="wrapperLayoutPage relative">
		
		<div class="row flexible flexible-wrap">
			
			<!-- Apertura -->
			<div class="col-xs-12 col-sm-3">

				<!-- titulo -->
				<h2 class="title"> 
					SEGAL <br/> CONSTRUCTORA
				</h2>

				<!-- Contenido -->
				<?= apply_filters( 'the_content' , $texto ); ?>

				<!-- Botón ver Más -->
				<a href="<?= $page_link; ?>" class="btn-show-more text-uppercase"> 
				<?= __('leer más'); ?> </a>

			</div> <!-- /.col-xs-12 col-sm- -->

			<!-- Imágen Destacada -->
			<div class="col-xs-12 col-sm-6">
				
				<figure class="featured-image">
					<img src="<?= $image_featured; ?>" alt="<?= $image_alt; ?>" class="img-fluid d-block m-x-auto" />
				</figure> <!-- /.featured-image -->

			</div> <!-- /.col-xs-12 col-sm- -->

			<div class="col-sm-3 hidden-xs-down"></div>

		</div> <!-- /.row -->

		<!-- Comentario Extra -->
		<div id="comment-extra">

			<h3 class="text-uppercase"> 
				<?= !empty($page_nosotros->post_excerpt) ? $page_nosotros->post_excerpt : 'proyectar infraestructura que garantiza la seguridad de nuestros clientes'; ?> 
			</h3>
			
		</div> <!-- /.comment-extra -->

	</div> <!-- /.pageWrapperLayout containerRelative -->
	
</section> <!-- /.sectionStaffMembers -->

<?php endif; ?>
<?php 
/* Template Name: Page Contacto Template */

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

$options = get_option("theme_settings"); ?>

<!-- Layout de Página -->
<main class="pageContentLayout">

	<!-- Espacios --> <br/><br/>
	
	<!-- Wrapper de Contenido -->
	<div class="wrapperLayoutPage">

		<div class="row">
			
			<!-- SECCION DE DATOS  -->
			<div class="col-xs-12 col-sm-6">
				
				<?php 
					$path_data_contact = realpath(dirname(dirname(__FILE__)) . '/partials/contact/section-data-contact.php');
					if(stream_resolve_include_path($path_data_contact)) :
						include($path_data_contact); endif; ?>

				<!-- Horario de Atención -->
				<section class="pageContacto__item">
				
					<!-- Título -->
					<h2 class="titleOfSection text-uppercase"> 
	 					<span> <?= __( "Horario de Atención" , "LANG" ); ?> </span>
	 				</h2>

	 				<?= isset($options['theme_atention_text']) ? apply_filters('the_content',$options['theme_atention_text']) : ''; ?>

				</section> <!-- /.pageContacto__item -->

				<!-- Redes Sociales -->
				<section class="pageContacto__item">
				
					<!-- Título -->
					<h2 class="titleOfSection text-uppercase"> 
	 					<span> <?= __( "redes sociales" , "LANG" ); ?> </span>
	 				</h2>

	 				<?php $path_social_contact = realpath(dirname(dirname(__FILE__)) . '/partials/common-section/social-links.php');

	 				$color_item = 'gray';

					if(stream_resolve_include_path($path_social_contact)) :
						include($path_social_contact); endif; ?>

				</section> <!-- /.pageContacto__item -->
				
			</div> <!-- /.col-xs-12 col-sm-6 -->

			<!-- FORMULARIO DE CONTACTO -->
			<div class="col-xs-12 col-sm-6">

				<?php 
					$path_form_contact = realpath(dirname(dirname(__FILE__)) . '/partials/contact/section-form-contact.php');
					if(stream_resolve_include_path($path_form_contact)) :
						include($path_form_contact); endif; ?>
				
			</div> <!-- /.col-xs-12 col-sm-6 -->
			
		</div> <!-- /.row -->

		<!-- CONTENIDO DE PAGINA -->
		<section class="pageContacto__item">

			<!-- Título -->
			<h2 class="titleOfSection text-uppercase"> 
				<span> <?= __( "distribuidores" , "LANG" ); ?> </span>
			</h2>

			<!-- Contenido -->
			<?= apply_filters( "the_content" , $post->post_content ); ?>
			
		</section> <!-- /.pageContacto__item -->

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageWrapper -->

<!-- Footer -->
<?php get_footer(); ?>


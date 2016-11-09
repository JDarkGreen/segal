<?php
/*
 * Plantilla Padre Superior , mostrada como primera 
 * opción
 */

/*
 * Obtener Header
 */
get_header(); 

/*
 * Extraer Opciones del Tema
 */
$options = get_option( 'theme_settings' ); 

/*
 * Importar Template de Slider Home
 */
if(stream_resolve_include_path('partials/home/slider-home.php'))
	include('partials/home/slider-home.php');

/*
 * Importar partial de servicios
 */
if(stream_resolve_include_path('partials/home/section-services.php'))
	include('partials/home/section-services.php'); 

/*
 * Importar partial de contacto
 */
if(stream_resolve_include_path('partials/common-section/section-page-banner.php'))
	include('partials/common-section/section-page-banner.php');

/*
 * Importar partial de Trabajos Realizados
 */
if(stream_resolve_include_path('partials/home/section-projects.php'))
	include('partials/home/section-projects.php'); ?>

	
<div class="wrapperLayoutPage">
	
	<!-- Título -->
	<h2 class="titleOfSection text-uppercase text-xs-center"> 
	<span> <?= __('Nosotros', LANG ); ?> </span> </h2>

</div> <!-- /.wrapperLayoutPage -->

<?php

/*
 * Importar partial de Página Nosotros
 */
if(stream_resolve_include_path('partials/pages/section-nosotros.php'))
	include('partials/pages/section-nosotros.php');

/*
 * Importar partial de Misceláneo
 */
if(stream_resolve_include_path('partials/home/miscelaneo.php'))
	include('partials/home/miscelaneo.php');


/*
 * Obtener Footer
 */
get_footer();

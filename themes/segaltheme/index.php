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
	include( locate_template('partials/common-section/section-page-banner.php') );

/*
 * Importar partial de Trabajos Realizados
 */
if(stream_resolve_include_path('partials/home/section-projects.php'))
	include( locate_template('partials/home/section-projects.php') );


?>


<?php 
/*
 * Obtener Footer
 */
get_footer();

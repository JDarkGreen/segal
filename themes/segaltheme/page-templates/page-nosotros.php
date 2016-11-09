<?php 
/* Template Name: Page Nosotros Template */

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
$banner = $post;
$path_banner = realpath(dirname(dirname(__FILE__)) . '/partials/pages/banner-top-page.php' );
if(stream_resolve_include_path($path_banner)) include($path_banner); ?>

<!-- Layout de Página -->
<main class="pageContentLayout">

<?php 
/*
 * Importar partial de Página Nosotros
 */
$path_nosotros = realpath(dirname(dirname(__FILE__)) . '/partials/pages/section-nosotros.php' );
if(stream_resolve_include_path($path_nosotros))
include($path_nosotros); ?>

</main> <!-- /.pageWrapper -->


<!-- Footer -->
<?php get_footer(); ?>


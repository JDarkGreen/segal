<?php 
/*
 * Obtener Todos los Trabajos Realizados
 */

$args = array(
	'meta_key'       => 'mbox_order_post',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'post_status'    => 'publish',
	'post_type'      => 'theme-projects',
	'posts_per_page' => -1,  ); 

$projects = get_posts( $args ); ?>

<section id="sectionInicioProjects">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<!-- Título -->
		<h2 class="titleOfSection text-xs-center"> <span> <?= __( 'Trabajos Realizados' , LANG ); ?> </span> </h2>
	
</section> <!-- /#sectionInicioProjects -->
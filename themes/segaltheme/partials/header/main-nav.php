<?php  
/*
 *  Archivo Partial que muestra 
 *  el menu de navegacion principal
 */

/*
 * Todas las funciones se encuentran en functions/custom-functions.php
 */ ?>

<nav id="mainNav" class="mainNavigation text-uppercase hidden-xs-down">
	
	<!-- Contenedor Layout -->
	<div class="wrapperLayoutPage">

		<div class="row">
		
			<!-- Left menu -->
			<div class="col-sm-5">
			<?php 
				wp_nav_menu(
					array(
					'menu_class'     => 'left-menu flexible flexible-wrap space-between',
					'theme_location' => 'left-menu'
				));
			?>
			</div> <!-- /col-sm-5 -->

			<!-- Logo -->
			<div class="col-sm-2">
				
				<?php  
				if(stream_resolve_include_path('main-logo.php'))
				include('main-logo.php'); ?>

			</div> <!-- /.col-sm-2 -->

			<!-- Right menu -->
			<div class="col-sm-5">
			<?php 
				wp_nav_menu(
					array(
					'menu_class'     => 'right-menu flexible flexible-wrap space-between',
					'theme_location' => 'right-menu'
				));
			?>
			</div> <!-- /col-sm-5 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->
	
</nav> <!-- /.mainNavigation -->
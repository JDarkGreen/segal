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

		<div class="flexible align-items-center">
	
			<!-- Left Menu -->
			<div class="menu-header-item">
				<?php 
					wp_nav_menu(
						array(
						'menu_class'     => 'left-menu flexible flexible-wrap space-between',
						'theme_location' => 'left-menu'
					));
				?>
			</div>
			
			<!-- Logo -->
			<?php if(stream_resolve_include_path('main-logo.php')) include('main-logo.php'); ?>

			<!-- Right menu -->
			<div class="menu-header-item">
			<?php 
				wp_nav_menu(
					array(
					'menu_class'     => 'right-menu flexible flexible-wrap space-between',
					'theme_location' => 'right-menu'
				));
			?>
			</div> <!-- /menu-header-item -->
			
		</div> <!-- /flexible -->
		
	</div> <!-- /.wrapperLayoutPage -->
	
</nav> <!-- /.mainNavigation -->
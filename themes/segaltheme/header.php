<?php
/*
 *  El template para mostrar el header
 *  Muestra todos los elementos de la cabeza 
 *  @package WordPress
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">

<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">

	<title><?php wp_title('|', true, 'right'); ?><?php bloginfo('name'); ?></title>
	
	<!-- Description Seo -->
	<?php  

	$mb_description = get_post_meta( get_the_ID() , '_yoast_wpseo_metadesc' , true ); 
	$mb_description = !empty($mb_description) ? $mb_description : get_the_title(); 

	/*
	 * Opciones del Tema
	 */
	$options = get_option('theme_settings'); ?>

	<meta name="description" content="<?= $mb_description; ?>" />

	<meta name="author" content="" />

	<!-- Mobile Specific Meta -->
	<meta http-equiv="cleartype" content="on" />
    <meta name="MobileOptimized" content="320" />
    <meta name="HandheldFriendly" content="True" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	<link rel="profile" href="http://gmpg.org/xfn/11" />

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" />
	
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicon and Apple Icons -->
	<link rel="shortcut icon" href="" type="image/x-icon" />
	<link rel="icon" href="" type="image/x-icon" />

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<!-- Contenedor Wrapper -->
<div id="st-container" class="st-container">

	<!-- Content push wrapper -->
	<div class="st-pusher">

		<!-- sidebar content -->
		<div class="st-menu st-effect-14" id="menu-14">
			<?php  
			//Incluir path de menu mobile
			if(stream_resolve_include_path('partials/header/main-nav-mobile.php'))
				include('partials/header/main-nav-mobile.php'); ?>
		</div>


		<div class="st-content"><!-- this is the wrapper for the content -->

			<!-- Header Principal -->
			<header id="mainHeader">

				<!-- Barra de Navegación Superior -->
				<div id="top-bar-header" class="hidden-xs-down">

					<!-- Wrapper -->
					<div class="wrapperLayoutPage">

						<?php  
						/*
						 * Incluir menu de Redes sociales
						 */
						if(stream_resolve_include_path('partials/common-section/social-links.php'))
							include('partials/common-section/social-links.php'); 

						/*
						 * Incluir partial de Números telefónicos
						 */
						if(stream_resolve_include_path('partials/header/section-numbers.php'))
							include('partials/header/section-numbers.php'); ?>
						
					</div> <!-- /.wrapperHeader -->
					
				</div> <!-- /.top-bar-header -->

				<?php  
					/* Incluir Template de Navegación */ 
				if(stream_resolve_include_path('partials/header/main-nav.php')) 
					include('partials/header/main-nav.php'); ?>
	
				<!-- Contenedor Mobile -->
				<div id="mobile-container" class="hidden-sm-up">
					
					<div class="row">
						
						<div class="col-xs-7">
							<!-- Logo -->
							<h1 id="mainLogo">
								<a href="<?= site_url(); ?>">
									<img src="<?= IMAGES ?>/logo.png" alt="<?= get_bloginfo('description') ?>" class="img-fluid" />
								</a>
							</h1>
						</div> <!-- /.col-xs-7 -->

						<div class="col-xs-5">
							
							<button id="menu-mobile" class="js-sidebar-effects" data-effect="st-effect-14">
								<i class="fa fa-bars" aria-hidden="true"></i>
								<?= __( 'Menú' , LANG ); ?>
							</button> <!-- #btn-menu-mobile -->
			 				
						</div> <!-- /.col-xs-5 -->

					</div>	<!-- /row -->

				</div> <!-- /#mobile-container -->
				
			</header> <!-- /.mainHeader -->



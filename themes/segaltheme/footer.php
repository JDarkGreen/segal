<?php
/*
 *  El template para mostrar el footer
 *  Muestra todos los elementos del pie de página 
 *  @package WordPress
 */ 

/*
 * Opciones del Tema
 */
$options = get_option('theme_settings'); ?>

<footer id="mainFooter" class="mainFooter">
		
	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="wrapperLayoutPage">

		<div class="row">
			
			<!-- Item -->
			<div class="col-xs-12 col-sm-4">

				<!-- Logo -->
				<h2 id="logo-footer">
					<img src="<?= IMAGES ?>/logo.png" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
				</h2> <!-- /.logo -->

				<br/>

				<!-- Texto Presentación -->
				<?= isset($options['theme_footer_text']) ? apply_filters( 'the_content' , $options['theme_footer_text'] ) : ''; ?>  

			</div> <!-- /.col-xs-12 col-sm-4 -->
						
			<!-- Item -->
			<div class="col-xs-12 col-sm-4 text-xs-center text-sm-left">

				<div class="item-footer">
	
					<!-- Título -->
					<h2 class="title-footer text-uppercase"> 
					<?= __("Contacto" , LANG );?> </h2>

					<?php  
					if(stream_resolve_include_path('partials/footer/section-data.php')) 
					include('partials/footer/section-data.php'); ?>
					
				</div> <!-- /.item-footer -->
							
			</div> <!-- /.col-xs-12 col-sm-4 -->

			<!-- Item -->
			<div class="col-xs-12 col-sm-4 text-xs-center text-sm-left">
				
				<!-- Título -->
				<h2 class="title-footer text-uppercase"> 
				<?= __("Reservas" , LANG );?> </h2>

				<?php  
				if(stream_resolve_include_path('partials/footer/menu-social-footer.php')) 
				include('partials/footer/menu-social-footer.php'); ?>

				<br/><br/>

				<!-- Texto web -->
				<div class="text-web"> WWW.SEGALCONSTRUCTORA.COM </div>
				
			</div> <!-- /.col-xs-12 col-sm-4 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage  -->

</footer> <!-- /.#mainFooter -->

<!-- Desarrollo -->
<div id="section-developer" class="text-xs-center">
	<?= '&copy; ' . date('Y') . ' SEGALCONSTRUCTORA Derechos reservados Desing by'; ?>
	<a href="http://www.ingenioart.com/" target="_blank"> INGENIOART</a>
</div> <!-- /.#section-developer -->


</div><!-- /st-content -->

</div><!-- /st-pusher -->

</div><!-- /st-container -->


<?php wp_footer(); ?>

</body> </html>
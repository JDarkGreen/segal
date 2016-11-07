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

<footer id="mainFooter">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<div class="row">
			
			<!-- Item Footer -->
			<div class="col-xs-12 col-sm-2">
				
				<img src="<?= IMAGES ?>/logo.png" alt="<?= get_bloginfo('description') ?>" class="img-fluid m-x-auto" />

				<br class="hidden-sm-up" />

			</div> <!-- /.col-xs-12 col-sm-4 -->

			<!-- Item Footer -->
			<div class="col-xs-12 col-sm-8 text-xs-center">
				
				<!-- Menu Footer -->
				<ul id="menu-list-footer">
				<?php  
					//teléfonos
					for( $i=1 ; $i<=2 ; $i++ ){
						if( isset( $options['theme_phone_text_'.$i]) && !empty($options['theme_phone_text_'.$i]) ) : ?>
						
					<li> <?= $options['theme_phone_text_'.$i] ?> </li>

					<?php endif; } 					

					//celulares
					for( $i=1 ; $i<=2 ; $i++ ){
						if( isset( $options['theme_cel_text_'.$i]) && !empty($options['theme_cel_text_'.$i]) ) : ?>
						
					<li> <?= $options['theme_cel_text_'.$i] ?> </li>

					<?php endif; } 

					//email 
					if( isset($options['theme_email_text']) && !empty($options['theme_email_text']) ) : ?>

					<li> <?= $options['theme_email_text'] ?> </li>

					<?php endif; ?>	

				</ul> <!-- /#menu-list-footer -->

				<!-- Copyright -->
				<div id="copyright">
					Copyright &copy; www.kayrel.com.pe
				</div> <!-- /#copyright -->

				<br class="hidden-sm-up" />
				
			</div> <!-- /.col-xs-12 col-sm-4 -->

			<div class="col-xs-12 col-sm-2">
				
				<?php  
 				//Template Redes sociales
 				$path_social_footer = realpath( dirname(__FILE__) . '/partials/footer/menu-social-footer.php');

 				if(stream_resolve_include_path($path_social_footer))
 					include($path_social_footer); ?>

			</div> <!-- /.col-xs-12 col-sm-4 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->
	
</footer> <!-- /#mainFooter -->



</div><!-- /st-content -->

</div><!-- /st-pusher -->

</div><!-- /st-container -->


<?php wp_footer(); ?>

</body> </html>
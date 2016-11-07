<?php  
/*
 * Plantila Miscelaneo Incluye:
 * - Catalogo
 * - Facebook
 */
?>

<section id="sectionMiscelaneo">
	
	<!-- Wrapper Layout -->
	<div class="wrapperLayoutPage">

		<div class="flexible flexible-wrap align-items">
	
			<!-- Catálogo -->
			<div class="itemMiscelaneo relative">
				
				<?php 
					//Si Existe Catalogo
				if( isset($options['theme_meta_brochure']) && !empty($options['theme_meta_brochure']) ) : ?>

				<a href="<?= $options['theme_meta_brochure']; ?>" target="_blank">
					<img src="<?= IMAGES ?>/backgrounds/fondo_catalogo.jpg" alt="<?= get_bloginfo('name') ?>" class="img-fluid m-x-auto d-block" />	
				</a>

				<?php endif; ?>
				
			</div> <!-- /.itemMiscelaneo -->
			
			<!-- Facebook -->
			<div class="itemMiscelaneo">

				<?php 
				//Si Existe Facebook
				if( isset($options['theme_meta_brochure']) && !empty($options['theme_meta_brochure']) ) :

					$path_file_fb = realpath( dirname(dirname(__FILE__)) . '/common-section/fan-page-facebook.php' );

					if( stream_resolve_include_path($path_file_fb) )
					include($path_file_fb);

				endif; ?>
				
			</div> <!-- /.itemMiscelaneo -->	

		</div> <!-- /.flexible align-items -->
		
	</div> <!-- /.wrapperLayoutPage -->

</section> <!-- /.sectionMiscelaneo -->
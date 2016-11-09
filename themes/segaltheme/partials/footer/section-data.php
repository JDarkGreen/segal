<?php
/*
 * File : Archivo Partial Section Data Footer
 * Accion : Incluir datos de contacto en el footer
 */  ?>

<ul id="menu-data-footer" class="text-xs-center text-sm-left">
	
<?php if( isset($options['theme_address_text']) && !empty($options['theme_address_text']) ): ?>
<!-- Address -->
<li>
	<i class="fa fa-map-marker" aria-hidden="true"></i>
	<?= apply_filters( 'the_content' , $options['theme_address_text'] ); ?>
</li>
<?php endif; ?>	


<!-- Teléfonos -->
<li>
	<i class="fa fa-whatsapp" aria-hidden="true"></i>
	<?php  
		for ( $i=1 ;  $i <= 5 ;  $i++) { 
			$cel = isset($options['theme_cel_text_'.$i]) ? $options['theme_cel_text_'.$i] : '';
			echo $i !== 1 && !empty($cel) ? ' - ' : '';
			echo $cel;
		}
	?>
</li>


<?php if( isset($options['theme_email_text']) && !empty($options['theme_email_text']) ): ?>
<!-- Email -->
<li>
	<i class="fa fa-envelope-o" aria-hidden="true"></i>
	<?= $options['theme_email_text']; ?>
</li>
<?php endif; ?>


</ul> <!-- /# -->

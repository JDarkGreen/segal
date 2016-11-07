<?php 
/*
 * File Name: Section Number
 * Despliega : los números de teléfonos de las opciones de 
 * personalización
 */ 

/*
 * Parametros
 * @options = contiene las opciones de personalización
 */

//Obtener Números de Teléfonos
$phones = array();
for ($i=1; $i <= 2 ; $i++) 
{ $phones[] = $options['theme_phone_text_' . $i ]; }

//Obtener Números de Celulares
$cellphones = array();
for ($i=1; $i <= 2 ; $i++) 
{ $cellphones[] = $options['theme_cel_text_' . $i ]; }   ?>


<section class="pull-xs-right">

	<!-- Ícono -->
	<i class="fa fa-whatsapp" aria-hidden="true"></i>
	
	<!-- Número de Teléfono -->
	<?= isset($options['theme_phone_text_1']) ? $options['theme_phone_text_1'] . ' / ' : ''; ?>	

	<!-- Número de Celular -->
	<?= isset($options['theme_cel_text_1']) ? $options['theme_cel_text_1'] : ''; ?>

</section> <!-- /.pull-xs-right -->


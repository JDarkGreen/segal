<?php 
/*
 * Sobreescribir Slug de taxonomías o custom post types
 */

$options = get_option( 'theme_settings' ); 

function get_all_taxonomies()
{
	#Obtener todas los parametros personalizados;
	global $options;

	//var_dump($options);

	$all_taxonomies = get_taxonomies();
	#excluir taxonomias
	$exclude_tax    =  array("category","post_tag","nav_menu","link_category","post_format","wpmf-category");

	#solo quedar con las taxonomias necesarias
	$all_taxonomies = array_diff( $all_taxonomies , $exclude_tax );

	#recorrido de taxonomias personalizables
	foreach( $all_taxonomies as $tax ) :

		#datos de la taxonomía
		$custom_tax_args = get_taxonomy( $tax  );

		#Hacemos los cambios correspondientes
		$custom_tax_args->show_admin_column = true;

		#Guardamos para luego setear al tipo de custom post 
		#al que pertenece
		$array_post_types = $custom_tax_args->object_type;		

		#Seteamos el nuevo slug personalizado 
		if( isset( $options['theme_rewriteurl'][$tax] ) ):
			$custom_tax_args->rewrite['slug']  = $options['theme_rewriteurl'][$tax];
		endif;

		$custom_tax_args->rewrite['with_front'] = false;

		// re registramos nuevamente la taxonomía
    	register_taxonomy( $tax , (array)$array_post_types , (array) $custom_tax_args );

	endforeach;

	#Para los tipos de post personalizados;
	$args = array(
		'public'   => true,
		'_builtin' => false
	);
		
	$output     = 'names'; // names or objects, note names is the default
	$operator   = 'and'; // 'and' or 'or'
	#Todos los tipos de posts
	$custom_post_types = get_post_types( $args, $output, $operator );

	#recorrido de los tipos de posts personalizables
	foreach( $custom_post_types as $post_type ) :

		#datos del tipo de post
		$custom_post_type_args = get_post_type_object( $post_type );

		#Hacemos los cambios correspondientes
		$custom_post_type_args->show_admin_column     = true;
		#Seteamos el nuevo slug personalizado 

		#Si existe la opcion de sobreescritura entonces setearla sino dejar su valor
		#por defecto.

		$custom_post_type_args->rewrite['slug'] = isset( $options['theme_rewriteurl'][$post_type] ) ? $options['theme_rewriteurl'][$post_type] : $custom_post_type_args->rewrite['slug'];

		$custom_post_type_args->rewrite['with_front'] = false;

		// re registramos nuevamente el tipo de post
		register_post_type( $post_type, (array) $custom_post_type_args );

	endforeach;

}

#Agregar Una funcion hook para llamar todas las taxonomias
add_action("init" , "get_all_taxonomies" , 11 );



<?php  
/* 
 * Template muestra o contiene los menus del tema 
 */

function register_my_menus(){
	register_nav_menus(

		array(
			'left-menu' => __('Left Main Menu', LANG ),
			'right-menu' => __('Right Main Menu', LANG ),
		)
	);
}

add_action('init', 'register_my_menus');

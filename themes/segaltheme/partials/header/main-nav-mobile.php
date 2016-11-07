<?php 
/*
 * File Partial : Main Nav Mobile
 * Despliega: el template para el menú en versión mobile
 */ ?>

<hr/>

<!-- Logo -->
<h1 id="mainLogo">
	<a href="<?= site_url(); ?>">
		<img src="<?= IMAGES ?>/logo.png" alt="<?= get_bloginfo('description') ?>" class="img-fluid d-block m-x-auto" />
	</a>
</h1>

<hr/>

<?php

wp_nav_menu(
	array(
	'menu_class'     => 'main-menu',
	'theme_location' => 'main-menu',
	'link_before' => '',
	'link_after' => '',
)); ?>

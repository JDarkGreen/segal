<?php 
/*
 * Obtener Elemento actual
 */

$current_object = get_queried_object(); 

/*
 * Obtener taxonomias / terminos del post actual
 */
$post_taxonomies = get_post_taxonomies($current_object);


/*
 * Verificar que tiene taxonomias
 */
if( is_array($post_taxonomies) && count($post_taxonomies) > 0 ) :

//Taxonomia actual
$current_taxonomy = $post_taxonomies[0]; 

if($current_taxonomy): 

//Obtener los terminos de este post
$the_terms_of_post = get_the_terms( $current_object , $current_taxonomy );

//Hacer Loop Para Obtener el padre
foreach($the_terms_of_post as $term):

	if( $term->parent !== 0 ):

		$this_parent = get_term_by( 'term_taxonomy_id' , (int)$term->parent , $current_taxonomy );

		if( $this_parent->parent == 0 ): $the_parent = $this_parent; endif;
	
	else: $the_parent = $term; endif;

endforeach;

if( isset($the_parent) ): 

//Obtener color asignado
$the_color = get_term_meta( $the_parent->term_id , 'meta_color_taxonomy' , true ); 

//Obtener los terminos hijos del padre
$child_terms = get_terms( array(
	'taxonomy'   => $current_taxonomy,
	'hide_empty' => false,
	'parent'     => $the_parent->term_id,  )); ?>

<section class="sectionCategoryItems">
	
	<!-- Título -->
	<h2 class="text-uppercase" style="color: <?= $the_color; ?> !important"> 
	<?= $the_parent->name; ?> </h2>

	<div class="container-categories" style="background-color: <?= $the_color; ?> !important">
		
		<?php foreach($child_terms as $child_term): ?>
		<a href="<?= get_term_link($child_term); ?>" class="item-category">
			<?= $child_term->name; ?>
		</a>
		<?php endforeach; ?>
		
	</div> <!-- /.container-categories -->

</section> <!-- /.sectionCategoryItems -->




<?php endif; //the parent  

endif; //curent taxonomy

endif;
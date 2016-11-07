<?php 
/*
 * File: Product Featured
 * Incluye : Todos los productos destacados
 */ 

/*
 * Obtener Productos Destacados
 */
$posts_per_page = 8;

$args = array(
	'posts_per_page' => $posts_per_page,
	'post_type'      => 'theme-products',
	'meta_key'       => 'mbox_order_post',
	'orderby'        => 'meta_value_num',
	'post_status'    => 'publish', 
	'meta_query'     => array(
		array( 'key' => 'theme_featured_item_check' , 'value' => 'on' , 'compare' => '=', )
	) );

$the_query = new WP_Query($args); ?>


<section id="sectionFeaturedProducts">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">
		
		<!-- Título -->
		<h2 class="titleOfSection text-uppercase"> 
		<?= __('destacados', LANG ); ?> </h2>

		<?php if( $the_query->have_posts() ): ?>
		
		<div class="flexible flexible-wrap aling-items">
	
			<?php while( $the_query->have_posts() ): $the_query->the_post(); ?>
				
				<?php if( has_post_thumbnail() ): ?>
					<article class="itemProductPreview">

						<div class="bg-container">

							<figure>
								<a href="<?= get_permalink(); ?>" class="">
								<?= get_the_post_thumbnail( get_the_ID() , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
								</a>
							</figure> <!-- /figure -->

							<div class="content-info text-xs-center">
								<!-- Title -->
								<h2> <?= __( get_the_title() , LANG );  ?> </h2>
								
								<!-- Code Product -->
								<?php  
									$mb_code_product = get_post_meta( get_the_ID() , 'mb_code_product' , true );
									$mb_code_product = !empty($mb_code_product) ? $mb_code_product : ''; ?>
								<span class="product-code"> <?= $mb_code_product; ?> </span>	
							</div> <!-- /.content-info -->

						</div> <!-- /.bg-container -->

						<!-- Detalle de Producto -->
						<a href="<?= get_permalink(); ?>" class="btn-details-product text-xs-center">
						<?= __( 'detalles' , LANG ); ?>
						</a> <!-- /. -->					

					</article> <!-- /.itemProductPreview -->
				<?php endif; ?>

			<?php endwhile; ?>
			
		</div> <!-- /flexible aling-items- -->

		<?php endif; ?>	
	
	</div> <!-- /.wrapperLayoutPage -->
	
</section> <!-- /.#sectionFeaturedProducts -->



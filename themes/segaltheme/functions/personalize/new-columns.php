<?php 

//Archivo crea nuevas columnas en el panel de administracion de wp
function add_thumbnail_columns( $columns ) {
    global $post; 
    
    #Obtener el tipo actual de post 
    $current_post = get_post_type( $post );
    #echo $current_post; exit;
    
    #Columnas a setear
    $columns = array(
		'cb'             => '<input type="checkbox" />',
		'featured_thumb' => 'Thumbnail',
		'title'          => 'Title',
		'author'         => 'Author',
        'categories'     => 'Categories',
		'tags'           => 'Tags',
		'comments'       => '<span class="vers"><div title="Comments" class="comment-grey-bubble"></div></span>',
		'date'           => 'Date'
    );

    #Si el tipo de post es producto
    if( $current_post === "producto-theme") :
        $columns['product_categories'] = "Categoría(s) Producto";
    endif;

    #Si el tipo de post es theme video
    if( $current_post === "theme-video" ) :
        $columns['featured_thumb'] = "Video Embebido";
    endif;

    return $columns;
}

function add_thumbnail_columns_data( $column, $post_id ) {

    global $post;
    #Obtener el tipo actual de post 
    $current_post = get_post_type( $post );

    switch ( $column ) {

        case 'featured_thumb':

            #Si el tipo de post el video 
            if( $current_post === "theme-video" ) :

                #Obtener información del post actual
                $data_post         = get_post( $post_id );
                #Contenido 
                $data_post_content = $data_post->post_content;

                $link_video = str_replace( 'watch?v=' , 'embed/' , $data_post_content);

                echo "<iframe src='$link_video ' frameborder='0' width='150' height='100' allowfullscreen ></iframe>";

            #Si es cualquier otro tipo de post 
            else:  
                echo '<a href="' . get_edit_post_link() . '">';
                echo the_post_thumbnail( array(70,70)  );
                echo '</a>';
            endif;

            break;

        #Caso Categorías de Producto
        case 'product_categories':

            #Obtener todos los terminos de este post según la taxonomía
            #categoria de producto 
            $terms_cat      = get_the_terms( $post_id , 'producto_category' );
            #creamos un array temporal donde almacenar estos terminos;
            $terms_cat_list = array();
            #recorremos y seteamos el arreglo anterior;
            foreach ( $terms_cat as $term ) :
                $terms_cat_list[] = $term->name;
            endforeach;

            #Mostramos los resultados en un string con comas;
            $string_terms_cat = !empty($terms_cat_list) ? join( ", ", $terms_cat_list ) : "No asociado";

            echo esc_html( $string_terms_cat );

            break;
    }
}

/**
* Seleccionar o customizar los tipos de posts que ser verán afectados.
**/

$custom_posts_type   = array();
$custom_posts_type[] = "theme-slider-home";
$custom_posts_type[] = "theme-products";
$custom_posts_type[] = "theme-branding";
$custom_posts_type[] = "theme-gallery-images";
$custom_posts_type[] = "post";


if ( function_exists( 'add_theme_support' ) ) :
    #Hacer el recorrido según los tipos de posts
    foreach( $custom_posts_type as $post_type ) :
        add_filter( "manage_".$post_type."_posts_columns" , 'add_thumbnail_columns' );
        add_action( "manage_".$post_type."_posts_custom_column" , 'add_thumbnail_columns_data', 10, 2 );
    endforeach;
endif;

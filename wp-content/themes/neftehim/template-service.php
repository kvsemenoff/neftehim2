<?php 
/*
Template name: Направления
*/
?>
<?php get_header(); ?>
<div class="bread_menu bread_menu_bg_img conveyors_page">	
	<div class="container pos-relative">
		<?php if( function_exists('kama_breadcrumbs') ) kama_breadcrumbs(' '); ?>		
		<a href="#modal__form_order" class="fancybox order_curcle_innerpage conveyors_page_circle">
			<span class="order_curcle__text toppadding">On-line</span>
			<span class="order_curcle__text">заявка</span>
		</a>
	</div>
</div>

<div class="clients_content">
	<div class="container">
		<div class="clients_header">
			<h2 class="h2 h2_dark clients_header__h2">Наши клиенты</h2>
		</div>
		<div class="clients_block">
			<?php $args = array(
				'post_type' => 'client'
				);


			$query = new WP_Query($args);

			while ( $query->have_posts() ) {
				$query->the_post(); ?>
				<div class="col-md-4 col-sm-6 col-lg-3">
					<div class="clients_item clients_item__1">
						<?php the_post_thumbnail() ?>
						<span class="clients_item__link"><?php the_title(); ?></span>
					</div>
				</div>

				<?php }?>
			</div>
		</div>
	</div>

	<?php get_footer(); ?>	
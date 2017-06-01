<?php 
/*
Template name: Направления
*/
?>
<?php get_header(); ?>
<div class="n-content">
	<div class="n-content-inner vertical-align">
		<?php 
		$args = array(
			'cat' => 7,
			);

		$query = new WP_Query($args);
		while ( $query->have_posts() ) {
			$query->the_post();
			?>
			
			<?php }?>	
		</div>
	</div>
	<?php get_footer(); ?>	
<?php 
/*
Template name: Направления
*/
?>
<?php get_header(); ?>
<div class="n-content">
	<div class="n-content-inner vertical-align">
		<div class="service-page">
			<div class="container">
				<div class="row">
					<?php 
					$args = array(
						'cat' => 7,
						);

					$query = new WP_Query($args);
					while ( $query->have_posts() ) {
						$query->the_post();
						?>
						<div class="box">
							<h1 class="h2"><?php the_title(); ?></h1>
							<?php the_content(); ?>
						</div>
						<?php }?>	
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php get_footer(); ?>	



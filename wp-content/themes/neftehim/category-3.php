<?php get_header(); ?>


<div class="n-content">
	<div class="n-content-inner vertical-align bitumsbgimg">	
		<div class="container newsbg bitumsblock">				
			<h1 class="h2 about__caption">БИТУМЫ И МАЗУТЫ</h1>

		
		<?php 
			$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
			$args = array(
				'cat' => 3,
				'paged' => $paged
			);

			$query = new WP_Query($args);
			while ( $query->have_posts() ) {
				$query->the_post();
			?>

			<div class="news-item">
				<a href="<?php the_permalink(); ?>" class="news-item__caption"><?php the_title(); ?></a>
				<div class="news-item__img">
					<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
				</div>
				<a href="<?php the_permalink(); ?>" class="news-item__txt"><?php  do_excerpt(get_the_excerpt(), 15); ?></a>
				<span class="news-item__date"><?php the_time('d.m.Y'); ?></span>
			</div>


					
			
			<?php }?>
			
		</div>
	</div>
</div>


<?php get_footer(); ?>
<?php get_header(); ?>




<div class="container newsbg">				
	<h1 class="h2 about__caption"><?php the_title(); ?></h1>
	<div class="news">	

		<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

			<div class="news-item">
				<a href="<?php the_permalink(); ?>" class="news-item__caption"><?php the_title(); ?></a>
				<div class="news-item__img">
					<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
				</div>
				<a href="<?php the_permalink(); ?>" class="news-item__txt"><?php  do_excerpt(get_the_excerpt(), 15); ?></a>
				<span class="news-item__date"><?php the_time('d.m.Y'); ?></span>
			</div>	

	<?php endwhile; ?>
	<?php else: ?>
	<?php endif; ?> 	
</div>
</div>
</div>


<?php get_footer(); ?>	
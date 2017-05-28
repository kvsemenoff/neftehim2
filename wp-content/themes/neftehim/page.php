<?php get_header(); ?>



<div class="news-page">
	<div class="container">				
		<div class="box">
			<h1 class="h2"><?php the_title(); ?></h1>
			<div class="content clearfix">						
				<div class="img-wrap">
					<img src="img/news-item4.jpg" alt="">
				</div>

				<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

					<p class="news-page__p_move"><?php the_content(); ?> </p>


				<?php endwhile; ?>
				<?php else: ?>
				<?php endif; ?> 
			</div>	
		</div>
	</div>
</div>


<?php get_footer(); ?>	
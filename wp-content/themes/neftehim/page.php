<?php get_header(); ?>


<div class="n-content">
	<div class="n-content-inner vertical-align news-page">	
		
			<div class="container">				
				<div class="box">
					<h1 class="h1"><?php the_title(); ?></h1>
					<div class="content clearfix">						
						

						<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

							<?php the_content(); ?>


						<?php endwhile; ?>
					<?php else: ?>
					<?php endif; ?> 
				</div>	
			</div>
		</div>
	
</div>
</div>

<?php get_footer(); ?>	
<?php get_header(); ?>


<div class="n-content">
	<div class="n-content-inner vertical-align news-page">	
		<div class="container">				
			<div class="box">
				<h1 class="h2"><?php the_title(); ?></h1>
				<div class="content clearfix">						
				<!-- 	<div class="img-wrap">
						<?php the_post_thumbnail(); ?>
					</div> -->

					<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

					<?php the_content(); ?>
					
					<div class="news-item__date">
						<?php the_time('d.m.Y'); ?>	
					</div>
					

					<?php endwhile; ?>
				<?php else: ?>
				<?php endif; ?> 
				</div>	
				<div class="news">	
					<?php related_posts(); ?>

					<div class="news-button">
						<a href="/novosti" class="button-more button-more_width">
							<span class="button-more__bg">
								<span class="button-more__txt">БОЛЬШЕ НОВОСТЕЙ</span>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>	
<?php get_header(); ?>


<div class="n-content-inner vertical-align newsbgimg">	
	<div class="container newsbg">	
		<div class="row">
			<?php if ( have_posts() ) : ?>	
				<div class="col-md-12">
					<?php  the_archive_title( '<h1>', '</h1>' );	?>
				</div>
				<div class="clearfix"></div>
				<br>
				<?php $i=1; ?>
				<?php while ( have_posts() ) : the_post(); ?>
				<div class="col-md-4">
					<div class="news-item">
						<a href="<?php the_permalink(); ?>" class="news-item__caption"><?php the_title(); ?></a>
						<div class="news-item__img">
							<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
						</div>
						<a href="<?php the_permalink(); ?>" class="news-item__txt"><?php  do_excerpt(get_the_excerpt(), 15); ?></a>
						<span class="news-item__date"><?php the_time('d.m.Y'); ?></span>
					</div>		
				</div>	

				<?php if($i%3 == 0){ ?>
					<div class="clearfix"></div>
				<?php } ?>
				<?php $i++; ?>
				<?php	endwhile; ?>
				<div class="clearfix"></div>
				<div class="col-md-12">
				<?php  
					the_posts_pagination( array(
						'prev_text'          => __( 'Previous page', 'twentyfifteen' ),
						'next_text'          => __( 'Next page', 'twentyfifteen' ),
						'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyfifteen' ) . ' </span>',
					) );
				?>
				</div>
				<div class="clearfix"></div>
				<br><br>
			<?php  endif;?>
			
		</div>	
	</div>
</div>


<?php get_footer(); ?>
<?php get_header(); ?>


<div class="n-content-inner vertical-align newsbgimg">	
	<div class="container newsbg">				
		<h1 class="h2 about__caption">НОВОСТИ</h1>
		<div class="news">

		
		<?php 
			$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
			$args = array(
				'cat' => 2,
				'paged' => $paged
			);

			$query = new WP_Query($args);
			while ( $query->have_posts() ) {
				$query->the_post();
			?>

			<div class="news-item">
				<a href="<?php the_permalink(); ?>" class="news-item__caption"><?php the_title(); ?></a>
				<div class="news-item__img">
					<a href="<?php the_permalink(); ?>"><img src="<?php echo get_template_directory_uri(); ?>/img/news-item2.jpg" alt=""></a>
				</div>
				<a href="<?php the_permalink(); ?>" class="news-item__txt"><?php  do_excerpt(get_the_excerpt(), 15); ?></a>
				<span class="news-item__date"><?php the_time('d.m.Y'); ?></span>
			</div>					
			
			<?php }?>
			<div class="clearfix"></div>
			<div class="news-button">
				<a href="#" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">АРХИВ НОВОСТЕЙ</span>
					</span>
				</a>
			</div>
	</div>
</div>


<?php get_footer(); ?>
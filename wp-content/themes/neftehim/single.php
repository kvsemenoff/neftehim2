<?php get_header(); ?>


<div class="n-content">
	<div class="n-content-inner vertical-align news-page">	
		<div class="container">				
			<div class="box">
				<h1 class="h2"><?php the_title(); ?></h1>
				<div class="content clearfix">						
					<div class="img-wrap">
						<?php the_post_thumbnail(); ?>
					</div>

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
					<!-- <div class="news-item">
						<a href="#" class="news-item__caption">НАЗВАНИЕ НОВОСТИ</a>
						<div class="news-item__img">
							<a href="#"><img src="img/news-item2.jpg" alt=""></a>
						</div>
						<a href="#" class="news-item__txt">Nullam eget pharetra est, a pulvinar urna. Sed rutrum commodo dolor vel ullamcorper. Donec placerat ipsum non lacus congue gravida. Quisque lobortis tellus nec felis varius</a>
						<span class="news-item__date">19.04.2107</span>
					</div>					
					<div class="news-item">
						<a href="#" class="news-item__caption">ОЧЕНЬ ДЛИННОЕ НАЗВАНИЕ НОВОСТИ В ДВЕ ДЛИННЫХ, ДЛИННЫХ  СТРОЧКИ</a>
						<div class="news-item__img">
							<a href="#"><img src="img/news-item3.jpg" alt=""></a>
						</div>
						<a href="#" class="news-item__txt">Nullam eget pharetra est, a pulvinar urna. Sed rutrum commodo dolor vel ullamcorper. Donec placerat ipsum non lacus congue gravida. Quisque lobortis tellus nec felis varius
							Nullam eget pharetra est, a pulvinar urna. Sed rutrum commodo dolor vel ullamcorper. Donec placerat ipsum non lacus congue </a>
							<span class="news-item__date">19.04.2107</span>
					</div>					
					<div class="news-item">
						<a href="#" class="news-item__caption">НАЗВАНИЕ НОВОСТИ В ОДНУ СТРОЧКУ</a>
						<div class="news-item__img">
							<a href="#"><img src="img/news-item1.jpg" alt=""></a>
						</div>
						<a href="#" class="news-item__txt">Vivamus dictum erat urna, id tincidunt turpis tempor nec. Phasellus ultrices sapien eget accumsan vehicula. Praesent metus mauris, placerat a odio vitae, fermentum sagittis diam. Vivamus vitae gravida ante. Duis et luctus nunc. Proin volutpat </a>
						<span class="news-item__date">19.04.2107</span>
					</div>
				 -->
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
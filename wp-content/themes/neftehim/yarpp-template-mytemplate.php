<?php 
/*
YARPP Template: Мойшаблон
Author: mitcho (Michael Yoshitaka Erlewine)
Description: A simple example YARPP template.
*/
?>
<?php if (have_posts()):?>

	<?php while (have_posts()) : the_post(); ?>
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
<p>Похожих материалов не найдено</p>
<?php endif; ?>

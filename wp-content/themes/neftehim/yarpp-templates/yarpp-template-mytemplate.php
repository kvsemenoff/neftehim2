<?php 
/*
YARPP Template: Мойшаблон
Author: mitcho (Michael Yoshitaka Erlewine)
Description: A simple example YARPP template.
*/
?>
<?php if (have_posts()):?>
<ol>
	<?php while (have_posts()) : the_post(); ?>
	<li><a href="<?php the_permalink() ?>" rel="bookmark"><?php the_title(); ?></a><!-- (<?php the_score(); ?>)--></li>
	<?php endwhile; ?>
</ol>
<?php else: ?>
<p>No related posts.</p>
<?php endif; ?>

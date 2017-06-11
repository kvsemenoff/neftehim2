<?php 
/*
Template name: Архив
*/
?>
<?php get_header(); ?>

<div class="n-content-inner vertical-align newsbgimg">	
	<div class="container newsbg">				
		<h1 class="h1 about__caption">Архив новостей</h1>
		<div class="news">
		<br><br>
		<?php wp_get_archives('type=monthly'); ?>
		<br><br>
		</div>
	</div>
</div>

<?php get_footer(); ?>

<?php get_header(); ?>	


<div class="news-page">
	<div class="container">				
		<div class="box">
			<h1 class="h2"><?php the_title(); ?></h1>
			<div class="content clearfix">						
				

				<br/>
				<h1>Поиск по: "<?php echo $_GET['s'];?>"</h1><br/><br/>
				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
					<a href="<?php the_permalink();?>"><?php the_title(); ?></a><br/><br/>

				<?php endwhile; else: ?>
				<p>Поиск не дал результатов.</p><br/><br/>
			<?php endif;?>
			
		</div>	
	</div>
</div>
</div>

<?php get_footer(); ?>	
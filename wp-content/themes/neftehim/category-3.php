<?php get_header(); ?>


<div class="n-content">
	<div class="n-content-inner vertical-align bitumsbgimg">	
		<div class="container newsbg bitumsblock">				
			<h1 class="h2 about__caption">БИТУМЫ И МАЗУТЫ</h1>

		
		<?php 
			$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
			$args = array(
				'cat' => 3,
				'paged' => $paged
			);

			$query = new WP_Query($args);
			while ( $query->have_posts() ) {
				$query->the_post();
			?>

			


			<div class="product-item">
				<h4 class="product-item__caption"><?php the_title(); ?></h4>	
				<div class="product-item__txtbox">	
					<div class="product-item__img">

						<?php if( class_exists('Dynamic_Featured_Image') ) { ?>
						<?php global $dynamic_featured_image; ?>
						<?php $featured_images = $dynamic_featured_image->get_featured_images( get_the_ID() ); ?>
						<?php foreach( $featured_images as $image ) { ?>				

						<a href="<?php echo $image['full'] ?>" data-fancybox-group="group">		<img src="<?php echo $image['full'] ?>" alt="">
						</a>

						<?php } ?>

						<?php } ?>
						
					</div>		
					<p><?php  do_excerpt(get_the_excerpt(), 15); ?>						
					</p>	
				</div>
				<div class="product-item__buttons">
					<span class="product-item__pasport">Паспорта и сертификаты</span>
					<div class="product-item__boxbuttons">
						<a href="<?php the_permalink(); ?>" class="product-item__look">Посмотреть</a>
						<a href="<?php the_permalink(); ?>" class="product-item__download">Скачать</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>		
			
			<?php }?>
			

			<div class="news-button">
				<a href="#" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">ПЕРЕЙТИ К ПОЛНОМУ КАТАЛОГУ ПРОДУКЦИИ</span>
					</span>
				</a>
			</div>
		</div>
	</div>
</div>


<?php get_footer(); ?>
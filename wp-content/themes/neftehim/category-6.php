<?php get_header(); ?>
<div class="n-content">
	<div class="n-content-inner vertical-align bitumsbgimg">	
		<div class="container newsbg bitumsblock">				
			<h1 class="h2 about__caption">Парафино-восковая продукция</h1>
			<?php $paged = (get_query_var('paged')) ? get_query_var('paged') : 1; ?>
			<?php $args = array(
				'cat' => 6,
				'paged' => $paged
			);  ?>
			<?php $query = new WP_Query($args); ?>
			<?php  while ( $query->have_posts() ) { ?>
			<?php  $query->the_post(); ?>
			<div class="product-item">
				<h4 class="product-item__caption"><?php the_title(); ?></h4>	
				<div class="product-item__txtbox">	
					<div class="product-item__img">
						<?php the_post_thumbnail(); ?>
					</div>		
					<p><?php  do_excerpt(get_the_excerpt(), 15); ?></p>	
				</div>
				<div class="product-item__buttons">
					<span class="product-item__pasport">Паспорта и сертификаты</span>
					<div class="product-item__boxbuttons">
						<?php if( class_exists('Dynamic_Featured_Image') ) { ?>
							<?php global $dynamic_featured_image; ?>
							<?php $featured_images = $dynamic_featured_image->get_featured_images( get_the_ID() ); ?>
							<?php $i=1; ?>
							<?php foreach( $featured_images as $image ) { ?>				
								<?php if ($i==1) { ?>
									<a href="<?php echo $image['full'] ?>" data-fancybox-group="group" class="product-item__download">Посмотреть</a>
								<?php }else{ ?>
									<a href="<?php echo $image['full'] ?>" data-fancybox-group="group" class="product-item__download hidden">Посмотреть</a>
								<?php } ?>
								<?php $i++; ?>
							<?php } ?>
							<?php $file = get_field('файл'); ?>
							<a href="<?php echo $file['url']; ?>" target="_blank" class="product-item__download">Скачать</a>
						<?php } ?>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>		
			<?php }?>
			<?php wp_reset_query(); ?>
			<div class="news-button">
				<a href="/katalog/" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">ПЕРЕЙТИ К ПОЛНОМУ КАТАЛОГУ ПРОДУКЦИИ</span>
					</span>
				</a>
			</div>
		</div>
	</div>
</div>
<?php get_footer(); ?>
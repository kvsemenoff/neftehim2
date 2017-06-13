<?php get_header(); ?>


<div class="n-content">
	<div class="n-content-inner vertical-align bitumsbgimg">	
		<div class="container newsbg bitumsblock">				
			<h1 class="h2 about__caption">Нефтехимия</h1>
			<?php $cat= 5; ?>
			<?php $paged = (get_query_var('paged')) ? get_query_var('paged') : 1; ?>
			<?php $args = array(
				'cat' => $cat,
				'paged' => $paged
			);  ?>
			<?php $query = new WP_Query($args); ?>
			<?php  while ( $query->have_posts() ) { ?>
			<?php  $query->the_post(); ?>
			<?php $id = get_the_id(); ?>
			<div class="product-item">
				<h4 class="product-item__caption"><?php the_title(); ?></h4>	
				<div class="product-item__txtbox">	
					<div class="product-item__img">
						<?php $image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full'); ?>
						<a href="<?php echo $image_url[0]; ?>" class="single-image"><img src="<?php echo $image_url[0]; ?>" /></a>

					</div>		
					<p><?php  do_excerpt(get_the_excerpt(), 15); ?></p>	
				</div>
				<?php $k=0; ?>
				<?php if( class_exists('Dynamic_Featured_Image') ) { ?>
					<?php global $dynamic_featured_image; ?>
					<?php $featured_images = $dynamic_featured_image->get_featured_images( get_the_ID() ); ?>
					<?php foreach( $featured_images as $image ) { ?>				
						<?php $k++; ?>
					<?php } ?>
				<?php } ?>
				<?php if ($k > 0) { ?>
				<div class="product-item__buttons">
					<span class="product-item__pasport">Паспорта и сертификаты</span>
					<div class="product-item__boxbuttons">
						<?php if( class_exists('Dynamic_Featured_Image') ) { ?>
							<?php global $dynamic_featured_image; ?>
							<?php $featured_images = $dynamic_featured_image->get_featured_images( get_the_ID() ); ?>
							<?php $i=1; ?>
							<?php foreach( $featured_images as $image ) { ?>				
								<?php if ($i==1) { ?>
									<a href="<?php echo $image['full'] ?>" data-fancybox-group="group<?php echo $id; ?>" class="product-item__download">Посмотреть</a>
								<?php }else{ ?>
									<a href="<?php echo $image['full'] ?>" data-fancybox-group="group<?php echo $id; ?>" class="product-item__download hidden">Посмотреть</a>
								<?php } ?>
								<?php $i++; ?>
							<?php } ?>
							<?php $file = get_field('файл'); ?>
							<?php if (trim($file['url']) !== "") { ?>
								<a href="<?php echo $file['url']; ?>" download class="product-item__download">Скачать</a>
							<?php } ?>
						<?php } ?>
					</div>
				</div>
				<?php } ?>
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
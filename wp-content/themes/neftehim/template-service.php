<?php 
/*
Template name: Направления
*/
?>
<?php get_header(); ?>
<div class="n-content">
	<div class="n-content-inner vertical-align">
		<div class="service-page">
			<div class="container">
				<div class="row">
					<?php 
					$args = array(
						'cat' => 7,
						);

					$query = new WP_Query($args);
					while ( $query->have_posts() ) {
						$query->the_post();
						?>
						<div class="box">
							<h1 class="h2"><?php the_title(); ?></h1>
							<?php the_content(); ?>
						</div>
						<?php }?>
						


						<div class="box">
							<h1 class="h2"><?php echo get_cat_name(8); ?></h1>
							<div class="row">
								<?php 
								$args = array(
									'cat' => 8
									);

								$query = new WP_Query($args);
								while ( $query->have_posts() ) {
									$query->the_post();
									?>
									<div class="docs clearfix">
										<span class="box-descr"><?php the_title(); ?></span>
										
										<?php if( class_exists('Dynamic_Featured_Image') ) { ?>
										<?php global $dynamic_featured_image; ?>
										<?php $featured_images = $dynamic_featured_image->get_featured_images( get_the_ID() ); ?>
										<?php foreach( $featured_images as $image ) { ?>				
										<div class="doc-wrap">
											<div class="doc-item">
												<a href="<?php echo $image['full'] ?>" data-fancybox-group="group">		<img src="<?php echo $image['full'] ?>" alt="">
												</a>
											</div>
										</div>
										<?php } ?>

										<?php } ?>
										<a class="doc" data-fancybox-group=group	href="<?php echo $image['full']; ?>">Посмотреть</a> <a href="#">Скачать</a>
										
									</div>

									<?php } ?>
								<!-- <div class="docs clearfix">
									<span class="box-descr">ОБРАЗЕЦ Приложения</span>
									<div class="doc-wrap">
										<div class="doc-item">
											<a class="doc" data-fancybox-group=group	href="../../img/doc.jpg"><img src="../../img/doc.jpg" alt=""></a><br/>
											<a class="doc" data-fancybox-group=group	href="../../img/doc.jpg">Посмотреть</a> <a href="#">Скачать</a>
										</div>
									</div>
								</div> -->
							</div>
						</div>







					</div>
				</div>
			</div>
		</div>
	</div>

	
	<?php get_footer(); ?>	



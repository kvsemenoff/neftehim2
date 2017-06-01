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
							<h1 class="h2"><?php echo get_cat_name(8);?></h1>
							<div class="row">
								
									<?php

									$parent_id = 8;


								# получаем дочерние рубрики
									$sub_cats = get_categories( array(
										'child_of' => $parent_id,
										'hide_empty' => 0
										) );

									if( $sub_cats ){
										foreach( $sub_cats as $cat ){

		// Данные в объекте $cat

		// $cat->term_id
		// $cat->name (Рубрика 1)
		// $cat->slug (rubrika-1)
		// $cat->term_group (0)
		// $cat->term_taxonomy_id (4)
		// $cat->taxonomy (category)
		// $cat->description ()
		// $cat->parent (0)
		// $cat->count (14)
		// $cat->object_id (2743)
		// $cat->cat_ID (4)
		// $cat->category_count (14)
		// $cat->category_description ()
		// $cat->cat_name (Рубрика 1)
		// $cat->category_nicename (rubrika-1)
		// $cat->category_parent (0)
											?>
											<div class="docs clearfix">
											<span class="box-descr"><?php echo $cat->name; ?></span>


											<?php	
											$args = array(
												'cat' => $cat->term_id,
												);
											$query = new WP_Query($args);
											while ( $query->have_posts() ) {
												$query->the_post();
												?>
												<div class="doc-wrap">
													<div class="doc-item">
													<a href="<?php echo $image['full']; ?>" data-fancybox-group="group">  <?php the_post_thumbnail(); ?></a>								
														<a class="doc" data-fancybox-group=group	href="<?php echo $image['full']; ?>">Посмотреть</a> <a href="#">Скачать</a>
													</div>
												</div>

												<?php
											}
											?>
										</div>
										<?php

									}
								}
								?>
								
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	
	<?php get_footer(); ?>	



<?php get_header(); ?>


<div class="n-content">
	<div class="n-content-inner vertical-align catalog-wrap">

		<div class="container box box1">
			<?php
			$parent_id = 4;

			# получаем дочерние рубрики
			$sub_cats = get_categories( array(
				'child_of' => $parent_id,
				'hide_empty' => 0,
				'include' => '6'
			));

			if( $sub_cats ){
				foreach( $sub_cats as $cat ){
			?>


			<h1 class="h2"><?php echo $cat->name; ?></h1>
				
				
				<?php	
				$args = array(
					'cat' => $cat->term_id,
					);
				$query = new WP_Query($args);
				while ( $query->have_posts() ) {
					$query->the_post();
				?>


				<div class="product-item">
					<h4 class="product-item__caption"><?php the_title(); ?></h4>	
					<div class="product-item__txtbox">	
						<div class="product-item__img">
							<?php $image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full'); ?>
							<a href="<?php echo $image_url[0]; ?>" class="single-image"><img src="<?php echo $image_url[0]; ?>" /></a>
	
						</div>		
						<p><?php  echo get_the_content(); ?></p>	
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


					<?php
						}
					}
				}
				?>
				<div class="catalog-button catalog-button1">
					<a href="#" class="button-more button-more_width">
						<span class="button-more__bg">
							<span class="button-more__txt">ВЕСЬ АССОРТИМЕНТ ПРОДУКЦИИ</span>
						</span>
					</a>
				</div>
		</div>
		

		<div class="container box box2">
			<?php
			$parent_id = 4;

			# получаем дочерние рубрики
			$sub_cats = get_categories( array(
				'child_of' => $parent_id,
				'hide_empty' => 0,
				'include' => '3'
			));

			if( $sub_cats ){
				foreach( $sub_cats as $cat ){
			?>


			<h1 class="h2"><?php echo $cat->name; ?></h1>
				
				
				<?php	
				$args = array(
					'cat' => $cat->term_id,
					);
				$query = new WP_Query($args);
				while ( $query->have_posts() ) {
					$query->the_post();
				?>


				<div class="product-item">
					<h4 class="product-item__caption"><?php the_title(); ?></h4>	
					<div class="product-item__txtbox">	
						<div class="product-item__img">
							<?php $image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full'); ?>
							<a href="<?php echo $image_url[0]; ?>" class="single-image"><img src="<?php echo $image_url[0]; ?>" /></a>
		
						</div>		
						<p><?php  echo get_the_content(); ?></p>	
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


					<?php
						}
					}
				}
				?>
				<div class="catalog-button catalog-button1">
					<a href="#" class="button-more button-more_width">
						<span class="button-more__bg">
							<span class="button-more__txt">ВЕСЬ АССОРТИМЕНТ ПРОДУКЦИИ</span>
						</span>
					</a>
				</div>
		</div>

		<div class="container box box3">
			<?php
			$parent_id = 4;

			# получаем дочерние рубрики
			$sub_cats = get_categories( array(
				'child_of' => $parent_id,
				'hide_empty' => 0,
				'include' => '5'
			));

			if( $sub_cats ){
				foreach( $sub_cats as $cat ){
			?>


			<h1 class="h2"><?php echo $cat->name; ?></h1>
				
				
				<?php	
				$args = array(
					'cat' => $cat->term_id,
					);
				$query = new WP_Query($args);
				while ( $query->have_posts() ) {
					$query->the_post();
				?>


				<div class="product-item">
					<h4 class="product-item__caption"><?php the_title(); ?></h4>	
					<div class="product-item__txtbox">	
						<div class="product-item__img">
							<?php $image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full'); ?>
							<a href="<?php echo $image_url[0]; ?>" class="single-image"></a><img src="<?php echo $image_url[0]; ?>" />
						</div>		
						<p><?php  echo get_the_content(); ?></p>	
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


					<?php
						}
					}
				}
				?>
				<div class="catalog-button catalog-button1">
					<a href="#" class="button-more button-more_width">
						<span class="button-more__bg">
							<span class="button-more__txt">ВЕСЬ АССОРТИМЕНТ ПРОДУКЦИИ</span>
						</span>
					</a>
				</div>
		</div>
		
		
	</div>
</div>


<?php get_footer(); ?>
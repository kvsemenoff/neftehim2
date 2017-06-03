<?php
/*
Template Name: Главная страница
*/
?>


<?php get_header(); ?>	
	<div class="n-content">
		<div class="n-content-inner vertical-align">	
			<div class="container">
	
		<div class="product-section">
			<div class="product-section__box">
				<div class="product-section__img">
					<a href="/katalog/parafino-voskovaya-produktsiya/"><img src="<?php echo get_template_directory_uri(); ?>/img/product1.jpg" alt=""></a>
				</div>
				<a href="/katalog/parafino-voskovaya-produktsiya/" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">ПАРАФИНО-ВОСКОВАЯ ПРОДУКЦИЯ </span>
					</span>
				</a>
			</div>
			<div class="product-section__box">
				<div class="product-section__img">
					<a href="/katalog/bitumy-i-mazuty/"><img src="<?php echo get_template_directory_uri(); ?>/img/product2.jpg" alt=""></a>
				</div>				
				<a href="/katalog/bitumy-i-mazuty/" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">БИТУМЫ И МАЗУТЫ</span>
					</span>
				</a>
			</div>
			<div class="product-section__box product-section__box_last">
				<div class="product-section__img">
					<a href="/katalog/neftehimiya/"><img src="<?php echo get_template_directory_uri(); ?>/img/product3.jpg" alt=""></a>
				</div>				
				<a href="/katalog/neftehimiya/" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">НЕФТЕХИМИЯ</span>
					</span>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
</div>
			<div class="aboutbackground">
	<div class="container">
		<div class="aboutblock">		
			<div class="about__txtbox">
				<h1 class="h2 about__caption">О КОМПАНИИ</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum quam vitae ligula fringilla, sit amet tincidunt est bibendum. Fusce consectetur ligula mauris, <a href="#">efficitur interdum erat dapibus id. </a> <a href="#"> In hac habitasse platea dictumst.</a> Nunc facilisis risus nisi, ac vulputate odio ullamcorper eget. Cras quis tortor at justo venenatis accumsan sit amet et tortor. Morbi scelerisque venenatis ex a volutpat. In placerat sapien eu fermentum tristique.</p>
				<p>Phasellus tincidunt sed erat id vehicula. Vestibulum vitae libero metus. Vivamus sodales enim eu euismod sollicitudin. Quisque sagittis ullamcorper dui eget dapibus. Donec non nulla augue. Vestibulum pulvinar justo sit amet porttitor vehicula. Suspendisse potenti. Maecenas faucibus lorem a varius commodo.</p>
				<p>Integer porta dictum ultrices. Curabitur et turpis nunc. Phasellus nec lorem et nunc tristique aliquet. Cras semper viverra tincidunt. Fusce ut sollicitudin ligula, ut scelerisque quam. Nulla leo felis, dapibus at ullamcorper quis, consectetur sed dui. Cras fermentum faucibus elit. Suspendisse ullamcorper vel massa vel bibendum. Fusce sed ultricies nisl. Curabitur vulputate metus ut condimentum condimentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in ipsum felis. Duis egestas in turpis eget finibus. Sed vitae nisl vitae nisi mattis imperdiet at non tellus. Nulla nec semper lorem. Integer malesuada euismod tempor.</p>
				<p>Sed et rutrum augue, varius vehicula lorem. Donec facilisis augue semper felis interdum gravida. Quisque posuere mauris vitae nulla auctor consectetur. Nunc sollicitudin a lorem sit amet rhoncus. Sed tincidunt urna vehicula magna dictum malesuada et eleifend dolor. Fusce arcu odio, pharetra ut faucibus in, scelerisque id tortor. Praesent ac felis dui. Curabitur at dictum magna. Pellentesque fringilla dignissim ipsum</p>
				<p>Phasellus tincidunt sed erat id vehicula. Vestibulum vitae libero metus. Vivamus sodales enim eu euismod sollicitudin. Quisque sagittis ullamcorper dui eget dapibus. Donec non nulla augue. Vestibulum pulvinar justo sit amet porttitor vehicula. Suspendisse potenti. Maecenas faucibus lorem a varius commodo.

				 </p>
				
			</div>
			<div class="about__formbox">
				<h1 class="about__caption">ОСТАВЬТЕ ЗАЯВКУ</h1>
				<form action="#" method="post" class="js-submit">
					<input type="text" name="nameorg" placeholder="Название организации">
					<input type="text" name="city" placeholder="Город">
					<input type="text" name="nameprod" placeholder="Наименование продукта">
					<input type="text" name="amountprod" placeholder="Требуемый объем продукта">
					<input type="text" name="date" placeholder="Дата отгрузки">
					<input type="text" name="contactface" placeholder="Контактное лицо">
					<input type="text" name="contactinfo" required="" placeholder="Контактная информация (E-mail, тел.)">
					<textarea placeholder="Ваши комментарии" name="comment"></textarea>
					<input type="submit" value="Отправить" name="submit">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
			<div class="container">
	<div class="news">		
		
		<?php 
			// задаем нужные нам критерии выборки данных из БД
		$args = array(
			'posts_per_page' => 3,
			'orderby' => 'comment_count',
			'cat' => '2'
			);

		$query = new WP_Query( $args );

// Цикл

		if ( $query->have_posts() ) {
			while ( $query->have_posts() ) {
				$query->the_post();
			  ?>
					
			  <div class="news-item">
			  	<a href="<?php the_permalink(); ?>" class="news-item__caption"><?php the_title(); ?></a>
			  	<div class="news-item__img">
			  		<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
			  	</div>
			  	<a href="<?php the_permalink(); ?>" class="news-item__txt"><?php  do_excerpt(get_the_excerpt(), 15); ?></a>
			  	<span class="news-item__date"><?php the_time('d.m.Y'); ?></span>
			  </div>

				<?php
			}
		} else {
	
		}
		
		wp_reset_postdata();	

		?>		
		
	</div>
	<div class="clearfix"></div>
</div>


		</div>
	</div>
	
<?php get_footer(); ?>	
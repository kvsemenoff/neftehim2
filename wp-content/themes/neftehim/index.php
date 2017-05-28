

<?php get_header(); ?>	
	<div class="n-content">
		<div class="n-content-inner vertical-align">	
			<div class="container">
	
		<div class="product-section">
			<div class="product-section__box">
				<div class="product-section__img">
					<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/product1.jpg" alt=""></a>
				</div>
				<a href="#" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">ПАРАФИНО-ВОСКОВАЯ ПРОДУКЦИЯ </span>
					</span>
				</a>
			</div>
			<div class="product-section__box">
				<div class="product-section__img">
					<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/product2.jpg" alt=""></a>
				</div>				
				<a href="#" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">БИТУМЫ И МАЗУТЫ</span>
					</span>
				</a>
			</div>
			<div class="product-section__box product-section__box_last">
				<div class="product-section__img">
					<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/product3.jpg" alt=""></a>
				</div>				
				<a href="#" class="button-more button-more_width">
					<span class="button-more__bg">
						<span class="button-more__txt">НЕФТЕХИМИЯ</span>
					</span>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
</div>
			<?php require_once('includes/about.php'); ?>
			<?php require_once('includes/news.php'); ?>
		</div>
	</div>
	
<?php get_footer(); ?>	
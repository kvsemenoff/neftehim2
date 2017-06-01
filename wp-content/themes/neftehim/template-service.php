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
							<h1 class="h2">Документы</h1>
							<div class="row">
								<div class="docs clearfix">
									<span class="box-descr">ОБРАЗЕЦ ДОГОВОРА</span>
									<?php 
									$args = array(
										'cat' => 8,
										);	
									$query = new WP_Query($args);
									while ( $query->have_posts() ) {
										$query->the_post();
										?>
										<div class="doc-wrap">
											<div class="doc-item">
												<a class="doc" data-fancybox-group=group	href="../../img/doc.jpg"><img src="../../img/doc.jpg" alt=""></a><br/>
												<a class="doc" data-fancybox-group=group	href="../../img/doc.jpg">Посмотреть</a> <a href="#">Скачать</a>
											</div>
										</div>
										<?php }?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php get_footer(); ?>	



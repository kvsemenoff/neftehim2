

<?php 
/*
Template name: Контакты
*/
?>

<?php get_header(); ?>



<div class="n-content">
	<div class="n-content-inner vertical-align">	
		<div class="mape-page">
			<div class="container">
				<div class="box">
					<h1 class="about__caption">Контакты офиса</h1>
					<div class="mape-wrap" id="mape-ofice">
					</div>
					<div class="mape-info clearfix">
						<div class="info info_left">
							<span>Контакная информация</span>
							<?php the_field('офис_контактная_информация') ?>
							<!-- <p>Фактический адрес: 121108, г.Москва, ул.Ивана Франко, д.4, корп.1.</p>
							<p>Юридический адрес: 121108, г.Москва, ул.Ивана Франко, д.4, корп.1.</p>
							<p>+7 (499) 685-10-26</p>
							<a href="#">info@n-h-s.ru</a> -->
						</div>
						<div class="info info_right">
							<span>КАК ДОБРАТЬСЯ ДО ОФИСА</span>
							<?php the_field('офис_как_добраться') ?>
							<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue justo sed fermentum dictum. Nullam porta vel felis nec auctor. Duis luctus id metus in aliquet. Nullam diam est, egestas sit amet massa a, accumsan maximus leo. Sed vestibulum, dolor porttitor finibus pulvinar, odio neque pellentesque nunc, interdum malesuada arcu metus varius neque. Nullam aliquam velit massa, et placerat arcu gravida.</p> -->
						</div>
					</div>
				</div>
				<div class="box">
					<h1 class="about__caption">Контакты склада</h1>
					<div class="mape-wrap" id="mape-sclad"></div>
					<div class="mape-info clearfix">
						<div class="info info_left">
							<span>Контакная информация</span>
							<?php the_field('склад_контактная_информация') ?>
							<!-- <p>Московская обл., г.Лыткарино, ул.Колхозная, д.4.</p>
							<a href="#">sklad@n-h-s.ru</a> -->
						</div>
						<div class="info info_right">
							<span>КАК ДОБРАТЬСЯ ДО склада</span>
							<?php the_field('склад_как_добраться') ?>
							<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue justo sed fermentum dictum. Nullam porta vel felis nec auctor. Duis luctus id metus in aliquet. Nullam diam est, egestas sit amet massa a, accumsan maximus leo. Sed vestibulum, dolor porttitor finibus pulvinar, odio neque pellentesque nunc, interdum malesuada arcu metus varius neque. Nullam aliquam velit massa, et placerat arcu gravida.</p> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="n-footer">
	<?php get_footer(); ?>	
</div>


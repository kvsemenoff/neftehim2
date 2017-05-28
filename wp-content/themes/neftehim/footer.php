<div class="n-footer">
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer_box">
					<div class="col-md-4">
						<p class="footer_copyright">© 2017 ООО «НенфтеХимСинтез»</p>
						<div class="footer_form">
							<form class="search-box">
								<input type="text"  name="s">
								<input type="submit" value="">
							</form>
						</div>
					</div>
					<div class="col-md-4">
						<p class="footer_adress"><span>ОФИС</span> г.Москва, ул.Ивана Франко, д.4, корп.1.</p>
						<p class="footer_adress"><span>СКЛАД</span> МО, г.Лыткарино, ул.Колхозная, д.4.</p>

					</div>
					<div class="col-md-4">
						<p class="footer_mail">8 499 <span>685 10 26</span><br>
							<a href="mailto:info@n-h-s.ru">info@n-h-s.ru</a>
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- A MODAL WINDOW -->
	<div class="js-window" id="js-form1">
		<span class="js-close"></span>
		<form action="#" method="post" class="js-submit modal-form">
			<input class="input-border" type="text"  placeholder="Ваше имя" name="uname">
			<input class="input-border" type="email"  placeholder="Ваше E-mail" name="email">
			<input class="input-border js-phone" type="text" placeholder="Номер контактного телефона" name="phone">
			<textarea class="input-border" placeholder="Текст сообщения" name="message"></textarea>
			<input type="submit" value="Отправить" name="submit">
		</form>
	</div>
	<div class="js-window" id="js-form2">
		<span class="js-close"></span>
		<h1>Спасибо за заявку.</h1>
		<p>Наш менеджер свяжется с вами!</p>
	</div>
	<a href="#js-form2" class="js-modal"></a>

	<a href="#" class="gototop"></a>

	<!-- JS_BLOCK -->
	<script src="<?php echo get_template_directory_uri(); ?>/libs/jquery/jquery-1.11.1.min.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/libs/owl.carousel/owl.carousel.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/libs/fancybox/jquery.fancybox.pack.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/js/jquery.mousewheel.js" type="text/javascript"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/js/responsiveTabs.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/js/jquery.maskedinput.min.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/js/fonts.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/js/common.js"></script>
	<script src="https://api-maps.yandex.ru/2.1/?lang=tr_TR" type="text/javascript"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/js/map.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/a/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/box/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/button/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/button-more/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/doc-item/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/h1/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/h2/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/input/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/news-item/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/product-item/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/search-box/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/strong/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/submit/script.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/block/textarea/script.js"></script>



</div>

<?php wp_footer(); ?>
</body>
</html>
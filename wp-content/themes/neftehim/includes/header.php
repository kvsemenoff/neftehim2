<!doctype html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php bloginfo('name'); ?><?php wp_title(); ?></title>

	<link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.png" />

	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/libs/bootstrap/bootstrap-grid-3.3.1.min.css" />
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/libs/fancybox/jquery.fancybox.css" />
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/libs/owl.carousel/assets/owl.carousel.css" />	

	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/reset.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/fonts.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style.css">

	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/a/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/box/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/button/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/button-more/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/doc-item/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/h1/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/h2/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/input/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/news-item/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/product-item/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/search-box/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/strong/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/submit/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/block/textarea/style.css">


	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style-db.css">	
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style-dd.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style-de.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style-df.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style-dg.css">
	
	
	
	
<?php wp_head(); ?>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-8 col-md-8">
			<div class="header-box__left">
				<a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/img/logo.png" alt=""></a>
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="header-box__right">
				<span>8 499 <b>685 10 26</b></span><br/>
				<a href="#js-form1" class="button js-modal">Оставьте сообщение</a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>

<div class="menu__mobile">
	<div class="container"><i class="fa fa-bars" aria-hidden="true"></i></div>
</div>

<div class="menu__wrap">
	<div class="container">
		<ul class="main-menu">
			<li><a href="#">главная</a></li>
			<li><a href="#">направления деятельности</a></li>
			<li><a href="#">продукция</a></li>
			<li><a href="#">новости</a></li>
			<li><a href="#">контакты</a></li>
		</ul>
	</div>
</div>
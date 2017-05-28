<!doctype html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php bloginfo('name'); ?><?php wp_title(); ?></title>

	<link rel="shortcut icon" href="favicon.png" />
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/libs.min.css">	
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css">
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
		<!-- <ul class="main-menu">
			<li><a href="#">главная</a></li>
			<li><a href="#">направления деятельности</a></li>
			<li><a href="#">продукция</a></li>
			<li><a href="#">новости</a></li>
			<li><a href="#">контакты</a></li>
		</ul> -->
		<?php 
		wp_nav_menu( array(
			'theme_location'  => 'Main menu',
			'menu'            => 'Главное меню', 
			'container'       => 'div', 
			'container_class' => '', 
			'container_id'    => '',
			'menu_class'      => 'main-menu', 
			'menu_id'         => '',
			'echo'            => true,
			'fallback_cb'     => 'wp_page_menu',
			'before'          => '',
			'after'           => '',
			'link_before'     => '',
			'link_after'      => '',
			'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
			'depth'           => 0,
			'walker'          => '',
			) );	
			?>
	</div>
</div>
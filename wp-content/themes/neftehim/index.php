<!doctype html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Главная</title>
<?php get_header(); ?>
<div class="n-wrapper">
	<div class="n-header">
		<?php require_once('includes/header-top.php'); ?>
	</div>
	<div class="n-content">
		<div class="n-content-inner vertical-align">	
			<?php require_once('includes/product.php'); ?>
			<?php require_once('includes/about.php'); ?>
			<?php require_once('includes/news.php'); ?>
		</div>
	</div>
	<div class="n-footer">
	 <?php get_footer(); ?>
	</div>
</div>
</body>
</html>

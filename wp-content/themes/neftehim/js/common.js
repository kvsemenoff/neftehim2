$(document).ready(function(){
	$("head").append("<link href='//netdna.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.css' rel='stylesheet'>");
	
	$(".js-phone").mask("+7 (999) 999 - 99 - 99?");
	// Мобильное меню 
	$(".fa-bars").click(function(m){
		m.preventDefault();
		$(".main-menu").slideToggle(500);
	});
	// Конец Мобильное меню

	// вывод блока в каталоге 
	
	$('.box1 > .product-item:gt(2)').hide();
	$('.box2 > .product-item:gt(2)').hide();
	$('.box3 > .product-item:gt(2)').hide();

	$(".catalog-button a").on('click', function(e){
		e.preventDefault();			
		if ($(this).find('.button-more__txt').text() == 'Свернуть каталог') {
			$(this).parents('.box').find('.product-item:gt(2)').hide();	
			$(this).find('.button-more__txt').text('ВЕСЬ АССОРТИМЕНТ ПРОДУКЦИИ');
			$(this).parents('.box').find('.button-more_active').removeClass('button-more_active');
		}else{
			$(this).parents('.box').find('.product-item').show();	
			$(this).find('.button-more__txt').text('Свернуть каталог');			
			$(this).addClass('button-more_active');
		}
	});

	// Конец вывод блока в каталоге

	/*MODAL WINDOW*/
	$('a.js-modal').on("click", function(e){
		e.preventDefault();
		var  id = $(this).attr('href'),
		winW = $(window).width(),
		winH = $(window).height();
		$(id).css("left", winW/2-$(id).innerWidth()/2);
		$(id).css("top", winH/2-$(id).innerHeight()/2);
		$('body').css({
			"overflowY" : "hidden",
			"paddingRight" : "17px"
		});
		$(id).fadeIn();
		$('body').append('<div class="mask" id="js-mask"></div>');
	});

	

	$('body').on("click", ".js-close", function(e){
		e.preventDefault();
		$('#js-mask').remove();
		$('.js-window').hide();
		$('body').removeAttr("style");
	});

	$('body').on("click", "#js-mask", function(){
		$('#js-mask').remove();
		$('.js-window').hide();
		$('body').removeAttr("style");

	});

	/*MODAL SUBMIT*/
	$('.js-submit').submit(function(){
		var phone = $(this).find('input[name="phone"]');
		
		if(phone.val() == ""){
			phone.focus();
			return false;
		}

		else{
			var form_data = $(this).serialize(); 
			$.ajax({
				type: "POST", 
				url: "/message.php", 
				data: form_data,
				success: function(form) {	
					$('.js-window').hide();
					$("input[type=text]").val("");
					$("input[type=email]").val("");
					$("input[type=hidden]").val("");
					$("textarea").val("");
					$('#js-mask').remove();
					$('a[href=#js-form2]').trigger('click');
				// location = "thanks.php";
			}
		});
		}
		return false;
	});


	$('.gototop').on("click", function(e){
		e.preventDefault();
		var scrollTopH = $('body').offset().top;
		$('html, body').animate({
			scrollTop: scrollTopH
		}, 500);
	});




	$("a[data-fancybox-group=group]").fancybox({
		'transitionIn' : 'none',
		'transitionOut' : 'none',
		'titlePosition' : 'over',
		'titleFormat' : function(title, currentArray, currentIndex, currentOpts) {
			return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
		}
	});
});//END READY


$(document).on("scroll", function(){
	var documentScroll = $(this).scrollTop();
	if(documentScroll > 400 && window.innerWidth < 990){
		$('.gototop').css("display", "block");
	}
	else{
		$('.gototop').css("display", "none");
	}
	
});
	

// map yandex




$(document).ready(function(){
	ymaps.ready(init);

	function init() {
    var center = [55.72858056899627,37.454141999999955];
    var center1 = [55.59113656911934,37.88662649999996];
    var myMap1 = new ymaps.Map('mape-ofice', {
        center: center,
        controls: [],
        zoom: 16,  
        controls: ['smallMapDefaultSet']
    }, {
        searchControlProvider: 'yandex#search'
        

    });
    
    myMap1.behaviors.disable('scrollZoom');
    var myMap2 = new ymaps.Map('mape-sclad', {
        center: center1,
        controls: [],
        zoom: 16,
        controls: ['smallMapDefaultSet']
    }, {
        searchControlProvider: 'yandex#search'
       
    });
    myMap2.behaviors.disable('scrollZoom');
    var myPlacemark1 = new ymaps.Placemark(center, {
        // Свойства.
        // Содержимое иконки, балуна и хинта.
    	  balloonContent: 'улица Ивана Франко, 4к4',
        hintContent: 'улица Ивана Франко, 4к4'
    }, {
        // Опции.
        iconLayout: 'default#image',
        iconImageHref: 'img/map-ic.png',
        iconImageSize: [42, 42]
        // preset: 'twirl#violetIcon'
    });
    var myPlacemark2 = new ymaps.Placemark(center, {
        // Свойства.
        // Содержимое иконки, балуна и хинта.
        balloonContent: 'Колхозная улица, 4',
        hintContent: 'Колхозная улица, 4'
    }, {
        // Опции.
        // Стандартная фиолетовая иконка.
        iconLayout: 'default#image',
        iconImageHref: 'img/map-ic.png',
        iconImageSize: [42, 42],
        preset: 'twirl#violetIcon'
    });
    myMap1.geoObjects.add(myPlacemark1);
    myMap2.geoObjects.add(myPlacemark2);
	}
});

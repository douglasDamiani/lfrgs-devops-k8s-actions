<!DOCTYPE html>

<#include init />

<html class="theme-default theme-gollog" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<@liferay_util["include"] page=top_head_include />
	<#if !isAdmin && !isAutenticacao>
		<!--[if lte IE 8]>
		<script type="text/javascript" src="${themaGolLog}js/lib_header_IE8.js"></script>
		<![endif]-->
		<script type="text/javascript" src="${themaGolLog}js/lib_header_01.js"></script>
	</#if>
	<#if isAdmin>
		<link rel="stylesheet" media="all" href="${themaGolLog}css/_custom_admin.css" />
	</#if>
</head>

<body>

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="position-relative" id="wrapper">
	<section id="content">
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
</div>



<@liferay_util["include"] page=body_bottom_include />
<@liferay_util["include"] page=bottom_include />

<#if !isAutenticacao && !isControlPanel && !isEditMode>
	<script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"node\/3112","currentPathIsAdmin":false,"isFront":true,"currentLanguage":"pt-br"},"pluralDelimiter":"\u0003","suppressDeprecationErrors":true,"jquery":{"ui":{"datepicker":{"isRTL":false,"firstDay":0}}},"dataLayer":{"defaultLang":"pt-br","languages":{"pt-br":{"id":"pt-br","name":"Portuguese, Brazil","direction":"ltr","weight":0},"es-ar":{"id":"es-ar","name":"Spanish, Argentina","direction":"ltr","weight":1},"es-cl":{"id":"es-cl","name":"Spanish, Chile","direction":"ltr","weight":2},"es-bo":{"id":"es-bo","name":"Spanish, Bolivia","direction":"ltr","weight":3},"es-py":{"id":"es-py","name":"Spanish, Paraguay","direction":"ltr","weight":4},"es-do":{"id":"es-do","name":"Spanish, Dominican Republic","direction":"ltr","weight":5},"es-uy":{"id":"es-uy","name":"Spanish, Uruguay","direction":"ltr","weight":6},"es-ec":{"id":"es-ec","name":"Spanish, Ecuador","direction":"ltr","weight":7},"es-pe":{"id":"es-pe","name":"Spanish, Peru","direction":"ltr","weight":8},"en":{"id":"en","name":"English","direction":"ltr","weight":9},"en-us":{"id":"en-us","name":"English, USA","direction":"ltr","weight":10},"es-co":{"id":"es-co","name":"Spanish, Colombia","direction":"ltr","weight":11}}},"golCkeditorAccordion":{"accordionStyle":{"collapseAll":null}},"ajaxTrustedUrl":{"\/resultado-de-busca":true},"blazy":{"loadInvisible":false,"offset":100,"saveViewportOffsetDelay":50,"validateDelay":25},"blazyIo":{"enabled":false,"disconnect":false,"rootMargin":"0px","threshold":[0]},"slick":{"accessibility":true,"adaptiveHeight":false,"autoplay":false,"autoplaySpeed":3000,"pauseOnHover":true,"pauseOnDotsHover":false,"pauseOnFocus":true,"arrows":true,"downArrow":false,"downArrowTarget":"","downArrowOffset":0,"centerMode":false,"centerPadding":"50px","dots":false,"dotsClass":"slick-dots","draggable":true,"fade":false,"focusOnSelect":false,"infinite":true,"initialSlide":0,"lazyLoad":"ondemand","mouseWheel":false,"randomize":false,"rtl":false,"rows":1,"slidesPerRow":1,"slide":"","slidesToShow":1,"slidesToScroll":1,"speed":500,"swipe":true,"swipeToSlide":false,"edgeFriction":0.35,"touchMove":true,"touchThreshold":5,"useCSS":true,"cssEase":"ease","cssEaseBezier":"","cssEaseOverride":"","useTransform":true,"easing":"linear","variableWidth":false,"vertical":false,"verticalSwiping":false,"waitForAnimate":true},"field_group":{"html_element":{"mode":"default","context":"view","settings":{"id":"","classes":"hc_item_imagens","element":"div","show_label":false,"label_element":"h3","label_element_classes":"","attributes":"","effect":"none","speed":"fast"}}},"acessibility":{"theme_highcontrast":false},"user":{"uid":0,"permissionsHash":"bb31f8450780613f570d58552a41fc096ab1024c145312b0c6896568dcdbea13"}}</script>
	<script type="text/javascript" src="${themaGolLog}js/lib_footer_01.js"></script>
	<script type="text/javascript" src="${themaGolLog}js/jquery.inputmask.min.js"></script>
	<script type="text/javascript" src="${themaGolLog}js/lib_footer_02.js"></script>
	<script type="text/javascript" src="${themaGolLog}js/maps_enhanced.js"></script>
	<script type="text/javascript">
		window.addEventListener('load', function() {
			if (window.dataLayer[0].Secoes_da_Pagina == undefined) {
				window.dataLayer[0].Secoes_da_Pagina = [{}];
			}
		});
	</script>
</#if>
<#if isAdmin && !isEditMode>
	<script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"node\/3112","currentPathIsAdmin":false,"isFront":true,"currentLanguage":"pt-br"},"pluralDelimiter":"\u0003","suppressDeprecationErrors":true,"jquery":{"ui":{"datepicker":{"isRTL":false,"firstDay":0}}},"dataLayer":{"defaultLang":"pt-br","languages":{"pt-br":{"id":"pt-br","name":"Portuguese, Brazil","direction":"ltr","weight":0},"es-ar":{"id":"es-ar","name":"Spanish, Argentina","direction":"ltr","weight":1},"es-cl":{"id":"es-cl","name":"Spanish, Chile","direction":"ltr","weight":2},"es-bo":{"id":"es-bo","name":"Spanish, Bolivia","direction":"ltr","weight":3},"es-py":{"id":"es-py","name":"Spanish, Paraguay","direction":"ltr","weight":4},"es-do":{"id":"es-do","name":"Spanish, Dominican Republic","direction":"ltr","weight":5},"es-uy":{"id":"es-uy","name":"Spanish, Uruguay","direction":"ltr","weight":6},"es-ec":{"id":"es-ec","name":"Spanish, Ecuador","direction":"ltr","weight":7},"es-pe":{"id":"es-pe","name":"Spanish, Peru","direction":"ltr","weight":8},"en":{"id":"en","name":"English","direction":"ltr","weight":9},"en-us":{"id":"en-us","name":"English, USA","direction":"ltr","weight":10},"es-co":{"id":"es-co","name":"Spanish, Colombia","direction":"ltr","weight":11}}},"golCkeditorAccordion":{"accordionStyle":{"collapseAll":null}},"ajaxTrustedUrl":{"\/resultado-de-busca":true},"blazy":{"loadInvisible":false,"offset":100,"saveViewportOffsetDelay":50,"validateDelay":25},"blazyIo":{"enabled":false,"disconnect":false,"rootMargin":"0px","threshold":[0]},"slick":{"accessibility":true,"adaptiveHeight":false,"autoplay":false,"autoplaySpeed":3000,"pauseOnHover":true,"pauseOnDotsHover":false,"pauseOnFocus":true,"arrows":true,"downArrow":false,"downArrowTarget":"","downArrowOffset":0,"centerMode":false,"centerPadding":"50px","dots":false,"dotsClass":"slick-dots","draggable":true,"fade":false,"focusOnSelect":false,"infinite":true,"initialSlide":0,"lazyLoad":"ondemand","mouseWheel":false,"randomize":false,"rtl":false,"rows":1,"slidesPerRow":1,"slide":"","slidesToShow":1,"slidesToScroll":1,"speed":500,"swipe":true,"swipeToSlide":false,"edgeFriction":0.35,"touchMove":true,"touchThreshold":5,"useCSS":true,"cssEase":"ease","cssEaseBezier":"","cssEaseOverride":"","useTransform":true,"easing":"linear","variableWidth":false,"vertical":false,"verticalSwiping":false,"waitForAnimate":true},"field_group":{"html_element":{"mode":"default","context":"view","settings":{"id":"","classes":"hc_item_imagens","element":"div","show_label":false,"label_element":"h3","label_element_classes":"","attributes":"","effect":"none","speed":"fast"}}},"acessibility":{"theme_highcontrast":false},"user":{"uid":0,"permissionsHash":"bb31f8450780613f570d58552a41fc096ab1024c145312b0c6896568dcdbea13"}}</script>
	<script defer type="text/javascript" src="${themaGolLog}js/lib_footer_01.js"></script>
	<script defer type="text/javascript" src="${themaGolLog}js/jquery.inputmask.min.js"></script>
	<script defer type="text/javascript" src="${themaGolLog}js/lib_footer_02.js"></script>
	<script defer type="text/javascript" src="${themaGolLog}js/maps_enhanced.js"></script>
	<script defer type="text/javascript">
		window.addEventListener('load', function() {
			const elements = jQuery ('[data-slick]');
			elements.each (function () {
				try{
					jQuery (this).slick ();
				} catch (e){

				}
			});
		});
	</script>

</#if>
<div id="mobile-visibility" class="d-none d-md-block"></div>
</body>
</html>
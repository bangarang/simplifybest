# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery -> 
	$("#featured").orbit()
	$("#overlay").css "display": 'none'
	margin = $('.scontainer').height()
	$(".scontainer").css "margin-bottom": -(margin)
	$(".scontainer").mouseenter ->
		$(this).stop(true, false).slideDown "fast"
		$("#overlay").css "z-index": 31, "display": 'block',"opacity": 0.8
	$(".scontainer").mouseleave ->
	  	$(".scontainer").stop(false, true).slideUp "fast"
	  	$("#overlay").css "z-index": -100, "display": 'none', "opacity": 0

	$(".product-button").mouseenter  ->
		$(".scontainer").stop(true, false).slideDown "fast"
		$("#overlay").css "z-index": 31, "display": 'block',"opacity": 0.8
	$(".product-button").mouseleave ->
	  	$(".scontainer").stop(true, true).slideUp "fast"
	  	$("#overlay").css "z-index": -100, "display": 'none', "opacity": 0

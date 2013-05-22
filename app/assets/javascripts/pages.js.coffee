# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery -> 
	$("#featured").orbit "pauseOnHover": true, "startClockOnMouseOut": true, "startClockOnMouseOutAfter": 500, "captions": true
	$(".menu").click ->
		$(".top-menu").slideToggle "fast"
		
	$images = $("#featured img")
	loaded_images_count = 0
	$images.load ->
	  loaded_images_count++
	  $("#featured").show("slow")  if loaded_images_count is $images.length

	$(".per").click ->
	  $(".cpc").toggle()
	  false

	$(".pers").click ->
	  $(".cpc").toggle()
	  false

	$(".close-cpc").click ->
	  $(".cpc").toggle()
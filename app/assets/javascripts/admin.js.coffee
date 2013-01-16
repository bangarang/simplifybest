# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery -> 
	$(".csm").click ->
		$(".csm-content").slideToggle "fast"
		$(".csm i").toggleClass("icon-angle-down").toggleClass("icon-angle-up")
	$(".prods").click ->
		$(".prods-content").slideToggle "fast"
		$(".prods i").toggleClass("icon-angle-down").toggleClass("icon-angle-up")
	$(".hm").click ->
		$(".hm-content").slideToggle "fast"
		$(".hm i").toggleClass("icon-angle-down").toggleClass("icon-angle-up")
	$(".users").click ->
		$(".users-content").slideToggle "fast"
		$(".users i").toggleClass("icon-angle-down").toggleClass("icon-angle-up")

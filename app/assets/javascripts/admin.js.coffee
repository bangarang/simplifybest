# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery -> 
	$(".csm").click ->
		$(this).parent().toggleClass "up"
	$(".prods").click ->
		$(this).parent().toggleClass "up"
	$(".hm").click ->
		$(this).parent().toggleClass "up"
	$(".users").click ->
		$(this).parent().toggleClass "up"

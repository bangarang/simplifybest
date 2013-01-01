# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery -> 
	$("#featured").orbit()

$(document).ready ->	  
	$(".product-button").hover (->
	  $(".scontainer").find(".pcontainer").slideUp "fast"
	  $(".scontainer").addClass("open").find(".pcontainer").stop(true, true).slideDown "fast"
	  $("#overlay").css
      	"z-index": 31
     	 opacity: 0.9
	), (e) ->
	  $(".scontainer").removeClass("open").find(".pcontainer").slideUp "fast"
	  $("#overlay").css
      	"z-index": -100
     	 opacity: 0

	$(".scontainer").bind("mouseenter", (e) ->
	  $(this).find(".pcontainer").stop true, false
	).bind "mouseleave", (e) ->
	  $(this).find(".pcontainer").stop(true, true).slideUp "fast"

	$(".product-button").bind("mouseenter", (e) ->
	  $(".scontainer").addClass("open").find(".pcontainer").stop(true, true).slideDown "fast"
	  $(this).find(".pcontainer").stop true, false
	).bind "mouseleave", (e) ->
	  $(this).find(".pcontainer").stop(true, true).slideUp "fast"


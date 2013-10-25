// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require turbolinks
//= require jquery_ujs
//= require angular
//= require angular-resource
//= require retina_tag
//= require foundation
//= require rails.validations
//= require rails.validations.turbolinks
//= require_tree .
//= require jquery.turbolinks

$(function(){ $(document).foundation(); });
$(document).ready(function(){
    $('.navicontainer').click(function() {
      $(this).toggleClass("clicked");
      $('ul.menu').toggle();
      return false;
    });
});
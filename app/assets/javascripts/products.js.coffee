# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('tr').hide()
    event.preventDefault()

  $('form').on 'click', '.remove_div', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('div').hide()
    event.preventDefault()

  $('form').on 'click', '.remove_li', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('li').hide()
    event.preventDefault()

  $('form').on 'click', '.add_pics', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $('.ppicture_edit').append($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $('form').on 'click', '.add_trs', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).closest('tr').before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $("div.button.dd").click ->
    $(".button.dd ul").slideDown "fast"
  $("div.button.dd").mouseleave ->
    $(".button.dd ul").slideUp "fast"
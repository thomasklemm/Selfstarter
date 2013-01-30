# application.js.coffee
# load jQuery beforhand
//= require jquery_ujs
//= require jquery.autosize

# Selfstarter
$ ->
  ##
  # Flash messages
  # Close on click
  $('.flash-message .close').click ->
    $(this).parent().slideUp()

  $('.flash-message').click ->
    $(this).slideUp()

  ##
  # Autosize
  $('textarea').autosize()

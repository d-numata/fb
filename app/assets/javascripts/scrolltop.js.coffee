ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
<<<<<<< HEAD
#    if height > 400
    if height > 200
=======
    if height > 400
>>>>>>> origin/master
      element.fadeIn() if !visible
    else
      element.fadeOut()
  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)
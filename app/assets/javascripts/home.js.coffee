# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->

  $('.painting').hover ((e)->
    used_pics = []
    picArray = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40"]
    current_pic = $(this).attr('src').match(/\d+/)
    picArray = _.difference picArray, current_pic
    $('.painting').not($(this)).each (i,painting) ->
      picArray = _.difference picArray, used_pics
      new_image = picArray[Math.floor(Math.random()*picArray.length)]
      used_pics.push new_image
      $(painting).parent().attr('href', "/assets/#{new_image}.jpg")
      $(painting).attr('src', "/assets/#{new_image}.jpg")
      console.log picArray

  )


  $('.painting_anchor a')
    .attr('rel','gallery')
    .fancybox(
      fitToView: false
    )

      # afterClose: ->
        # location.reload()
        # return
      # href: $(this).href
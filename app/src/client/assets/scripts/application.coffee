$ ->
  videofilter_autoheight = false
  $('#bgvideo').on 'play', ->
    if ! videofilter_autoheight
      video_height = $(this).height()
      $('.video-filter').height video_height
      videofilter_autoheight = true


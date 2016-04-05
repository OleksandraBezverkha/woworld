Dropzone.autoDiscover = false
$(document).ready ->
  if $('#new_upload').length > 0
    mediaDropzone = new Dropzone('#new_upload')
    mediaDropzone.on 'success', (file, responseText) ->
      appendContent responseText.image.url, responseText.id
      _this = @ # если на прямую, то не работает
      setTimeout (->
        _this.removeAllFiles()
      ), 5000
  appendContent = (imageUrl, mediaId) ->
    $('#show_imgs').prepend  '<img src="' + imageUrl + '" width="300"/>'
  $(".img_puzzle").click ->
    a=this.getAttribute("src").replace('thumb_','');
    console.log(a)
    $(".show_puzzle").html('<br>'+'<img src="' + a + '" class="jqPuzzle" width="500" />')
#  $("ul.puzzle_invis li").hide()
#  $('ul.puzzle_vis').on 'click', 'li', ->
#    el=$(this).index()
#    $("ul.puzzle_invis li").eq(el).jqPuzzle()
#    .css("visibility": "visible")

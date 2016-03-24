$(document).ready ->
#    $('.fullpage').fullpage
#        menu: '.navbar'
#        scrollingSpeed: 700
#        verticalCentered: true
#        resize: false
#        navigation: true
#        navigationPosition: 'right'
#        css3: true
  tinymce.init({
    forced_root_block : "",
    force_br_newlines : true,
    force_p_newlines : false,
  });
  $('.all_emoji').children().toArray().forEach (item, i, arr) ->
    item.setAttribute 'onClick', 'Smyle(a=this.getAttribute("class"))'
#  $('.modal.news').onload=emoji()
  @Smyle= ->
#    $('.all_emoji ').children().click ->
    txt=tinyMCE.activeEditor.getContent();
    txt=txt.replace(/^\<p\>/,"").replace(/\<\/p\>$/,"");
#    $('p').remove()
    tinyMCE.activeEditor.setContent(txt+':' + a + ':');

#    $('#emoji_textarea').val(txt + ':' + a + ':')
#  $('.danger').popover
#    html: true
#    content: ->
#      $('.popover').html()
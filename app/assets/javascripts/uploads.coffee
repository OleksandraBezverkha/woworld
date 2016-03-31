$(document).ready ->
    # disable auto discover
    Dropzone.autoDiscover = true
    # grap our upload form by its id
    $('#new_upload').dropzone
    paramName: 'upload[image]'
    addRemoveLinks: true
#//Dropzone.autoDiscover = false;
#
#//
#//if($('#media-dropzone')){
#//    $(function() {
#//        var mediaDropzone;
#//        mediaDropzone = new Dropzone("#media-dropzone");
#//        return mediaDropzone.on("success", function(image, responseText) {
#//            console.log(responseText);
#//            appendContent(responseText.image.url, responseText.id);
#//            var _this = this;
#//            setTimeout(function(){
#//                _this.removeAllFiles();
#//            },5000);
#//        });
#//    });
#    //var appendContent = function(imageUrl, mediaId) {
#    //    var col = 1, row = 1;
#    //    if($("#show_imgs li").length > 0) {
#    //        col = parseInt($("#show_imgs li").last().attr('data-col'));
#    //        row = parseInt($("#show_imgs li").last().attr('data-row'));
#    //
#    //        if (col >= 5) {
#    //            row += 1;
#    //            col = 1;
#    //        }
#    //        else col += 1;
#    //    }
#    //    code =' <li class="gridster-cell gs-w" data-col="'+col+'" data-row="'+row+'" data-sizex="1" data-sizey="1" position="relative">' +
#    //        '<img src="'+imageUrl+'" />' + '</li>';
#    //    $("#show_imgs").append(code);
#    //    $($("#show_imgs li")).css({"mapgin": "50px","background-color": "yellow"});
#    //};
#//}
#    @showImage = (url) ->
#        code = '<img src="' + url + '" />'
#        $('.dropzone').html code
#
#    Dropzone.autoDiscover = false
#    $(document).ready ->
#        if $('.dropzone').length > 0
#            $ ->
#                mediaDropzone = undefined
#                mediaDropzone = new Dropzone('.dropzone')
#                mediaDropzone.on 'success', (image, responseText) ->
#                    appendContent responseText.image.url, responseText.id
#                    _this = this
#                    setTimeout (->
#                        _this.removeAllFiles()
#                        return
#                    ), 5000
#                    return
#
#            appendContent = (imageUrl, mediaId) ->
#                $('#media-contents').prepend '<div class="thumbnail" style="border: 1px solid red;" onClick="showImage(\'' + imageUrl + '\')">' + '<img src="' + imageUrl + '"/></div>'
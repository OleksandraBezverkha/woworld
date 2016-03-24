$(document).ready(function(){
    // disable auto discover
    Dropzone.autoDiscover = true;

    // grap our upload form by its id
    $("#new_upload").dropzone({
        // restrict image size to a maximum 1MB
        //maxFilesize: 1,
        // changed the passed param to one accepted by
        // our rails app
        paramName: "upload[image]",
        // show remove links on each image uploa
        addRemoveLinks: true,
        //clickable:true
    });
});
//Dropzone.autoDiscover = false;
//
//if($('#media-dropzone')){
//    $(function() {
//        var mediaDropzone;
//        mediaDropzone = new Dropzone("#media-dropzone");
//        return mediaDropzone.on("success", function(image, responseText) {
//            console.log(responseText);
//            appendContent(responseText.image.url, responseText.id);
//            var _this = this;
//            setTimeout(function(){
//                _this.removeAllFiles();
//            },5000);
//        });
//    });
//    var appendContent = function(imageUrl, mediaId) {
//        var col = 1, row = 1;
//        if($("#show_imgs li").length > 0) {
//            col = parseInt($("#show_imgs li").last().attr('data-col'));
//            row = parseInt($("#show_imgs li").last().attr('data-row'));
//
//            if (col >= 5) {
//                row += 1;
//                col = 1;
//            }
//            else col += 1;
//        }
//        code =' <li class="gridster-cell gs-w" data-col="'+col+'" data-row="'+row+'" data-sizex="1" data-sizey="1" position="relative">' +
//            '<img src="'+imageUrl+'" />' + '</li>';
//        $("#show_imgs").append(code);
//        $($("#show_imgs li")).css({"mapgin": "50px","background-color": "yellow"});
//    };
//}
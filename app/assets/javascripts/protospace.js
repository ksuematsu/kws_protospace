$(function(){
  var $cover_image = $(".cover-image-upload");
  // var $provisional_image = $("#")
  $('#main').change(
    function previewFile() {
      var reader = new FileReader();
      var preview = document.querySelector("#main_image");
      var file = $(".cover-image-upload input[type=file]").prop("files")[0];

      reader.onload = function() {
        preview.src = reader.result;
      };
      reader.readAsDataURL(file);
      $(preview).show();
      $("#main").hide();
    });
});

// function previewFile() {
//   var preview = document.querySelector('img');
//   var file    = document.querySelector('input[type=file]').files[0];
//   var reader  = new FileReader();

//   reader.onloadend = function () {
//     preview.src = reader.result;
//   }

//   if (file) {
//     reader.readAsDataURL(file);
//   } else {
//     preview.src = "";
//   }
// }

// function upload_main_image(t){
//   fileLoad(t,function(t){
//     $("#main_preview").attr("src",t.currentTarget.result).show(),
//     $(".cover-image-upload").css("background","white")
//   })}
// function upload_image_user(t){fileLoad(t,function(t){$("#user_avatar").attr("src",t.currentTarget.result).css("display","")})}function upload_sub_image(t,e){fileLoad(t,function(t){$("#sub_"+e+"_preview").attr("src",t.currentTarget.result).show(),$("#image_"+e+"_uploader").css("background","white")})}

// function fileLoad(t,e){
//   var n=$(t).prop("files")[0],
//   i=new FileReader;
//   i.onload=e,i.readAsDataURL(n)
// }
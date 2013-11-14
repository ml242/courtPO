
$(function(){

  $('#case-button').on('click', function(e){
   var opinion = $('#opinion-input').val();

   $.ajax({
    type: "POST",
    url: url,
    data: data,
    success: success,
    dataType: dataType
  });

 });
  backgroundResizeFun();
  $(window).resize(function(){
    backgroundResizeFun();
  });
});




















var backgroundResizeFun=function(){
  // console.log('resize');
   $('#wrapperz').height($(window).height());
  // $('#bkg-image').css({
  //   width:$(window).width()+'px',
  //   height:$(window).height()+'px'
  // });
} ;









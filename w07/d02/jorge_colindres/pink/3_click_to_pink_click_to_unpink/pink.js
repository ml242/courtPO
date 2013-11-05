$(function(){
  var clicked = false;
  $('#click-me').click(function(){
    if (clicked === false) {
      $('body').addClass('pinkBg');
      clicked = true;
    } else {
      $('body').removeClass('pinkBg');
      clicked = false;
    }
  });
});

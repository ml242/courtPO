$(function(){
  var colors = ['pinkBg', 'blueBg', 'redBg'];
  var i = 0;
  var body = $('body');
  $('#click-me').click(function(){
    if (i < colors.length){
      body.removeClass();
      body.addClass(colors[i]);
      i++;
    } else {
      i = 0;
      body.removeClass();
      body.addClass('whiteBg');
    }
  });
});


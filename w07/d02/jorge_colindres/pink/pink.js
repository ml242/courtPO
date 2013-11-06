$(function(){
  var colors = ['pinkBg', 'blueBg', 'redBg'];
  var i = 0;
  var body = $('body');
  $('#click-me').click(function(){
    body.removeClass();
    if (i < colors.length){
      body.addClass(colors[i]);
      i++;
    } else {
      i = 0;
    }
  });
});


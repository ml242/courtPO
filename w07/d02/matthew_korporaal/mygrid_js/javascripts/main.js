(function main() {
  var clicked = false;
  COLORS = ["pink", "blue", "aqua", "yellow"];
  var currColor = 0;

  $('#magic-button').click(function(){
     $('body').removeClass(COLORS[currColor]);

     if (currColor == COLORS.length-1){
      currColor = 0;
     } else {
      currColor++;
     }
     $('body').addClass(COLORS[currColor]);

  });
})();
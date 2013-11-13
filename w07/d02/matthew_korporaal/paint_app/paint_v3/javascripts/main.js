var Paint = Paint || {};

$(document).ready(function() {
  Paint.createSurface(30, 30, 20, 20);
});


// part 1
// (function main() {
//   var clicked = false;

//   $('#magic-button').click(function(){
//     if (clicked) {
//      $('body').removeClass('pink');
//      clicked = false;
//     } else {
//      $('body').addClass('pink');
//      clicked = true;
//     }
//   });
// })();

// part 2
// (function main() {
//   var clicked = false;
//   COLORS = ["pink", "blue", "aqua", "yellow"];
//   var currColor = 0;

//   $('#magic-button').click(function(){
//      $('body').removeClass(COLORS[currColor]);
//      if (currColor == COLORS.length-1){
//       currColor = 0;
//      } else {
//       currColor++;
//      }
//      $('body').addClass(COLORS[currColor]);

//   });
// })();
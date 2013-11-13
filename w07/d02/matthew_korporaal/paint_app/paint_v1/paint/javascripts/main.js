window.onload = function(){
  var numRows = 100;
  var numCols = 100;
  // create # of .row div
  for (var i=0;i<numRows;i++){
    var $row = $("<div>", {id: "row", class: "row"})
    $('body').append($row);

    // fill with .block divs
    for (var j=0;j<numCols;j++){
      var $block = $("<div>", {id: "block", class: "block"});
      $row.append($block);
    }
  }
}
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
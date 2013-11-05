$(document).ready( function() {
  console.log("hi");
})
var makeTiles = function(tileNum) {
    for (var i = 0 ; i < tileNum; i++) {
      var divvy = $("<div>");
      divvy.addClass("tile");
      $("body").append(divvy);
    };
  }

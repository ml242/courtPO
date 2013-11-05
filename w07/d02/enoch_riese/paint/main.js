$(document).ready( function() {
  console.log("hi");
})
var hoverGreen = function(e) {
  $(this).addClass("green");
}
var unGreen = function(e) {
  $(this).removeClass("green")
}
var makeTiles = function(tileNum) {
  for (var i = 0 ; i < tileNum; i++) {
    var divvy = $("<div>");
    divvy.addClass("tile");
    divvy.on("mouseover", hoverGreen);
    divvy.on("mouseout", unGreen);
    $("body").append(divvy);
  };
}
makeTiles(50);

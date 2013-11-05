$(document).ready( function() {
  console.log("hi");
})
var hoverGreen = function(e) {
  $(this).addClass("green");
}
var unGreen = function(e) {
  $(this).removeClass("green")
}
var stayGreen = function(e) {
  hoverGreen();
  $(this).off("mouseout");
}
var addEventListeners = function(node) {
  node.on("mouseover", hoverGreen);
  node.on("mouseout", unGreen);
  node.on("click", stayGreen);
}
var makeTiles = function(tileNum) {
  for (var i = 0 ; i < tileNum; i++) {
    var divvy = $("<div>");
    divvy.addClass("tile");
    addEventListeners(divvy);
    $("body").append(divvy);
  };
}
makeTiles(50);

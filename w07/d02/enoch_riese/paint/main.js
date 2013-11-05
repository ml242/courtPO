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
  $("div").off("mouseout");
}
var unClick = function(e) {
  addEventListeners($(".tile").not(".green"));
}
var addEventListeners = function(node) {
  node.on("mouseover", hoverGreen);
  node.on("mouseout", unGreen);
  node.on("mousedown", stayGreen);
  node.on("mouseup", unClick);
}
var makeTiles = function(tileNum) {
  var tileStr = ""
  for (var i = 0 ; i < tileNum; i++) {
    var divvy = "<div class='tile'></div>";
    tileStr += divvy;
  };
  $("#canvas").append(tileStr);
  addEventListeners($(".tile"));
}
makeTiles(10000);

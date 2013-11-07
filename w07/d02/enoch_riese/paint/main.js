$(document).ready( function() {
  console.log("hi");
})
COLORS = ["red", "blue", "green", "yellow", "pink", "purple"];
var hoverGreen = function(e) {
  $(this).removeClass();
  $(this).addClass("tile painted " + $(".selected").attr("id"));
}
var paintedGreen = function(e) {
  $(this).attr("id", $(this).attr("class"));
  $(this).removeClass();
  $(this).addClass("tile painted " + $(".selected").attr("id"));
}
var unGreen = function(e) {
  $(this).removeClass($(".selected").attr("id"));
  $(this).removeClass("painted")
}
var stayGreen = function(e) {
  $(".painted").on("mouseover", hoverGreen);
  $(".tile").off("mouseout");
  hoverGreen();
}
var paintedUnGreen = function(e) {
  $(this).attr("class", ($(this).attr("id")));
}
var unClick = function(e) {
  tileAddEventListeners($(".tile").not(".painted"));
  $(".painted").on("mouseout", paintedUnGreen);
  $(".painted").on("mouseover", paintedGreen);
}
var tileAddEventListeners = function(node) {
  node.on("mouseover", hoverGreen);
  node.on("mouseout", unGreen);
  node.on("mousedown", stayGreen);
  node.on("mouseup", unClick);
}
var makeTiles = function(tileNum) {
  var tileStr = "";
  for (var i = 0 ; i < tileNum; i++) {
    var divvy = "<div class='tile'></div>";
    tileStr += divvy;
  };
  $("#canvas").append(tileStr);
  tileAddEventListeners($(".tile"));
}
makeTiles(2500);
var paletteClick = function(e) {
  $(".selected").removeClass("selected");
  $(this).addClass("selected");
}
var paletteAddEventListeners = function(node) {
  node.on("click", paletteClick);
}
var makePalette = function(colors) {
  paletteStr = "";
  for (var i = 0; i < colors.length; i++) {
    var divvy = "<div class='palette " + colors[i] +"' id='" + colors[i] + "'></div>";
    paletteStr += divvy;
  };
  palette = $("<div/>").append(paletteStr)
  palette.addClass("paletteContainer")
  $("body").prepend(palette);
  paletteAddEventListeners($(".palette"));
}
makePalette(COLORS);

$("document").ready(function() {
  generateTiles(21, 64, 64);
  })



function generateTiles(numTiles, width, height) {
  for (i=0; i<numTiles; i++) {
   var tile =  $("<div/>")
      .addClass("tile")
      .css("width", width)
      .css("height", height);
  $("#tiles").append(tile);
  }



}

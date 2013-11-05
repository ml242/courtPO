$("document").ready(function() {
  generateTiles(32, 50, 50);
  })

function generateTiles(numTiles, width, height) {
  for (i=0; i<numTiles; i++) {
   var tile =  $("<div/>")
      .addClass("tile")
      .css("width", width)
      .css("height", height)
      .mouseover(function() {
        $(this).addClass("mousePaint")
      })
      .mouseout(function(){
        $(this).removeClass("mousePaint")
      });
  $("#tiles").append(tile);
  }
}

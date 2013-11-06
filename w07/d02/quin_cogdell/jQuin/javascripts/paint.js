var Paint = Paint || {};

Paint.generateTiles = function(numTiles, width, height) {
  for (i=0; i<numTiles; i++) {
   var tile =  $("<div/>")
      .addClass("tile")
      .css("width", width)
      .css("height", height)
  $("#tiles").append(tile);
  }
}

Paint.addEventListeners = function() {
  $(".tile").on("mouseover", function(e){
    var tile = $(e.target);
    tile.addClass("mousePaint");
  })
  $(".tile").on("mouseout", function(e) {
    var tile = $(e.target);
    tile.removeClass("mousePaint");
  })

}

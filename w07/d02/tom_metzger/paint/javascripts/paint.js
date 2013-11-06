var Paint = Paint || {};

Paint.generateBlocks = function(numTiles) {
  for (var i=0; i<numTiles; i++) {
    var tile = $("<div/>")
      .addClass("block");

    $("body").append(tile);
  }
}

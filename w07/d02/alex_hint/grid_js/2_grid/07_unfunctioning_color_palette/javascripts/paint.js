function Paint() {
  this.activeateSwatches(); // NEW
  this.generateTiles(44, 100, 12);
}

// NEW: this was created to add event listeners to the palette's swatches
Paint.prototype.activeateSwatches = function() {
  var paletteColors = ["red", "orange", "yellow", "green", "blue", "purple"]
  $.each(paletteColors, function(i, color) {
    $swatch = $(".swatch"+"."+color);
    $swatch.on("click", function(e) {
      $(".swatch").removeClass("selected");
      var $swatch = $(e.target)
      $swatch.addClass("selected");
    });
  });
}

Paint.prototype.generateTiles = function(numRows, numCols, width) {
  var $body = $("body");

  for (var row=0; row < numRows; row++) {
    var $row = $("<div>").addClass("row");
    $body.append($row);

    for (var col=0; col<numCols; col++) {
      var $tile = $("<div/>")
        .css("width", width)
        .css("height", width)
        .addClass("tile");

      Paint.addEventListeners($tile);

      $row.append($tile);
    }
  }
}

Paint.addEventListeners = function($tile) {

  $tile.on("mousemove", function(e){
    console.log(e.timestamp)
    $tile.addClass("highlighted");

    var LEFT_MOUSE_BUTTON_DOWN = 1;

    if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
      $tile.addClass("painted");
    }
  });

  $tile.on("mouseout", function(e){
    $tile.removeClass("highlighted");
  });


  $tile.on("click", function(e){
    $tile.addClass("painted");
  })

}

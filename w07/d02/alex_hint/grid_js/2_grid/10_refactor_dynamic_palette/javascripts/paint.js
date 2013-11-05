function Paint() {
  this.activeateSwatches();
  this.generateTiles(18, 35, 32);
  this.paintbrushColor = "green";
}



Paint.prototype.activeateSwatches = function() {
  var paletteColors = ["red", "orange", "yellow", "green", "blue", "purple"]
  var paintApp = this;

  $palette = $(".palette");

  $.each(paletteColors, function(i, color) {
    $swatch = $("<div>")
      .addClass("swatch")
      .addClass(color);
    $palette.append($swatch);

    $swatch.on("click", function(e) {
      $(".swatch").removeClass("selected");
      var $swatch = $(e.target)
      $swatch.addClass("selected");
      paintApp.paintbrushColor = color
    });
  });
}

Paint.prototype.generateTiles = function(numRows, numCols, width) {
  var $canvas = $(".canvas");

  for (var row=0; row < numRows; row++) {
    var $row = $("<div>").addClass("row");
    $canvas.append($row);

    for (var col=0; col<numCols; col++) {
      var $tile = $("<div/>")
        .css("width", width)
        .css("height", width)
        .addClass("tile")
        .addClass("painted-white");

      this.addEventListeners($tile);

      $row.append($tile);
    }
  }
}

Paint.prototype.addEventListeners = function($tile) {

  var paintApp = this;

  $tile.on("mousemove click", function(e){
    var currentColor = paintApp.paintbrushColor;

    $tile.addClass("hovered-"+currentColor)
    $tile.attr("hovered-color", currentColor);

    var LEFT_MOUSE_BUTTON_DOWN = 1;

    if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
      var previousPaintedColor = $tile.attr("painted-color");
      $tile.removeClass("painted-"+previousPaintedColor);

      $tile.addClass("painted-"+paintApp.paintbrushColor);
      $tile.attr("painted-color", currentColor);
    }
  });

  $tile.on("mouseout", function(e){
    var hoveredColor = $tile.attr("hovered-color");
    $tile.removeAttr("hovered-color");
    $tile.removeClass("hovered-"+hoveredColor);
  });
}

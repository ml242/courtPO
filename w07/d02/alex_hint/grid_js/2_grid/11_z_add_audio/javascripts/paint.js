function Paint() {
  this.activeateSwatches();
  this.generateTiles(30, 45, 26);
  this.paintbrushColor = "green";

  this.soundBoard = new SoundBoard();
  this.soundBoard.playSong();
}

Paint.prototype.activeateSwatches = function() {
  var paletteColors = ["grass","red_flowers","weed","weed_4x","weed_small","week_2x","box","fence_1","fence_2","fence_3","fence_4","fence_5","fence_6","fence_7","fence_8","fence_9","mountain_1","mountain_2","mountain_3","mountain_4","mountain_5","mountain_6","mountain_7","mountain_8","mountain_9","mountain_entrance","rock_1","rock_2","sign","tree_1","tree_2","urn","water_1","water_2","water_3","water_4","water_5","water_6","water_7","water_8","water_9"];
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
        .addClass("painted-grass");

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

  $tile.on("mousedown", function(e) {
    paintApp.soundBoard.playKhuff();
  });

  $tile.on("mouseout", function(e){
    var hoveredColor = $tile.attr("hovered-color");
    $tile.removeAttr("hovered-color");
    $tile.removeClass("hovered-"+hoveredColor);
  });
}

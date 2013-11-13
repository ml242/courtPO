function Paint() {
  this.activeateSwatches();
  this.generateTiles(44, 100, 12);
  this.paintbrushColor = "green"; // NEW: setting a default paintBrush color
}



Paint.prototype.activeateSwatches = function() {
  var paletteColors = ["red", "orange", "yellow", "green", "blue", "purple"]
  var paintApp = this;
  $.each(paletteColors, function(i, color) {
    $swatch = $(".swatch"+"."+color);
    $swatch.on("click", function(e) {
      $(".swatch").removeClass("selected");
      var $swatch = $(e.target)
      $swatch.addClass("selected");
      paintApp.paintbrushColor = color // NEW: Setting the paintbrush color
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
    // $tile.attr("hovered-color", currentColor);

    var LEFT_MOUSE_BUTTON_DOWN = 1;

    if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
      // NEW: something that also needs to be changed
      // is that when you paint again, you will need to remove any prior paint color
      // and if you don't necessarily know which paint color it is, you can just remove all the possible paint colors

      $tile.removeClass("painted-white")
        .removeClass("painted-red")
        .removeClass("painted-orange")
        .removeClass("painted-yellow")
        .removeClass("painted-green")
        .removeClass("painted-blue")
        .removeClass("painted-purple");

      $tile.addClass("painted-"+paintApp.paintbrushColor);
    }
  });

  $tile.on("mouseout", function(e){
    $tile.removeClass("hovered-white")
      .removeClass("hovered-red")
      .removeClass("hovered-orange")
      .removeClass("hovered-yellow")
      .removeClass("hovered-green")
      .removeClass("hovered-blue")
      .removeClass("hovered-purple");
  });
}

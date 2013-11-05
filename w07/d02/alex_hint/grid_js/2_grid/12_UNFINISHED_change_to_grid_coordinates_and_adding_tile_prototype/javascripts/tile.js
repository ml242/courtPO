function Tile(width) {
  this.width = width;

  var this.tileNode = $("<div/>")
    .css("width", this.width)
    .css("height", this.width)
    .addClass("tile")
    .addClass("painted-grass");

  this.addEventListenersToTileNode();
}

Tile.prototype.addEventListenersToTileNode = function() {

  var paintApp = this;

  this.tileNode.on("mousemove click", function(e){
    var currentColor = paintApp.paintbrushColor;

    this.tileNode.addClass("hovered-"+currentColor)
    this.tileNode.attr("hovered-color", currentColor);

    var LEFT_MOUSE_BUTTON_DOWN = 1;

    if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
      var previousPaintedColor = this.tileNode.attr("painted-color");
      this.tileNode.removeClass("painted-"+previousPaintedColor);

      this.tileNode.addClass("painted-"+paintApp.paintbrushColor);
      this.tileNode.attr("painted-color", currentColor);
    }
  });

  this.tileNode.on("mouseout", function(e){
    var hoveredColor = this.tileNode.attr("hovered-color");
    this.tileNode.removeAttr("hovered-color");
    this.tileNode.removeClass("hovered-"+hoveredColor);
  });
}

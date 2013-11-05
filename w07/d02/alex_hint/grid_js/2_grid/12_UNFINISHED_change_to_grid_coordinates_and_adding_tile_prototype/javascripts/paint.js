function Paint() {
  this.activeateSwatches();
  this.grid = new Grid(30, 45, 26);
  this.paintbrushColor = "weed";
  this.activateKeyboardEventListeners();
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

Paint.prototype.activateKeyboardEventListeners = function() {
  $(document).on("keydown", function(e){
    var LEFT = 37,
        UP = 38,
        RIGHT = 39,
        DOWN = 40;

    if (e.keyCode === LEFT) {

    }
    else if (e.keyCode === UP) {

    }
    else if (e.keyCode === RIGHT) {

    }
    else if (e.keyCode === DOWN) {

    }
  });
}

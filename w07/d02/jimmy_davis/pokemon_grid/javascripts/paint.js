// when hover over $(".tile"), addClass("green")
// have 2 different green classes = painted green and hover green
// so when you unhover, the hover green will be gone
// and the painted green will stay when you click

// $(document).ready(function() {
//   $(".tile").on("hover", function() {
//     $(".tile").addClass("hover-green");
//   });
// });

// 04 click and hold - mouseover event, if mousedown, make it green
// if it is a left-click down (google it)

var Paint = Paint || {};

Paint.generateTiles = function(numRows, numCols, width) {
  var $body = $("body");

  for (var row = 0; row < numRows; row++) {
    var $row = $("<div>").addClass("row");
    $body.append($row);

    for (var col = 0; col < numCols; col++) {
      var $tile = $("<div>")
        .css("width", width)
        .css("height", width)
        .addClass("tile");

      Paint.addEventListeners($tile);

      $row.append($tile);
    }
  }
};

Paint.addEventListeners = function($tile) {
  $tile.on("mousemove", function(e){
    $tile.addClass("hovered");

    var left_clicked = 1;

    if (e.which === left_clicked) {
      $tile.addClass("painted");
    }
  });

  $tile.on("mouseout", function(e){
    $tile.removeClass("hovered");
  });

  $tile.on("click", function(e) {
    $tile.addClass("painted");
  });
};


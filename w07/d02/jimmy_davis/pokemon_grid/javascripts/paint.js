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

Paint.generateTiles = function(numTiles, width, height) {
  for (var i=0; i<numTiles; i++) {
    var $tile = $("<div/>")
      .css("width", width)
      .css("height", height)
      .addClass("tile");

// The event listeners are now added inside of here,
// passing $tile so that I don't need to find it again
    Paint.addEventListeners($tile)

    $("body").append($tile);
  }
}

Paint.addEventListeners = function($tile) {
  $tile.on("mouseover", function(e){
    $tile.addClass("hovered");
  });

  $tile.on("mouseout", function(e){
    $tile.removeClass("hovered");
  });


}


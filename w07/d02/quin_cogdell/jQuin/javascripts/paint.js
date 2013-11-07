var Paint = Paint || {};

Paint.generateTiles = function(numRows, numCols, width) {
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

// Paint.addEventListeners = function($tile) {

//   $tile.on("mousemove", function(e){
//     //debugger
//     console.log(e.timestamp)
//     $tile.addClass("mouseOverPaint");

//     var LEFT_MOUSE_BUTTON_DOWN = 1;

//     if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
//       //debugger
//       $tile.addClass("mouseClickPaint")
//     }
//   });

//   $(".tile").on("mouseout", function(e) {
//     var tile = $(e.target);
//     tile.removeClass("mouseOverPaint");
//   })

//   $tile.on("click", function(e) {
//     var tile = $(e.target);
//     tile.addClass("mouseClickPaint")
//   })
// }



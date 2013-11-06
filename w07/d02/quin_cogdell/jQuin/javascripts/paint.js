var Paint = Paint || {};

Paint.generateTiles = function(numTiles, width, height) {
  for (i=0; i<numTiles; i++) {
   var $tile =  $("<div/>")
      .addClass("tile")
      .css("width", width)
      .css("height", height);

// TODO last tile does not have event listeners
    Paint.addEventListeners($tile);
    $("#tiles").append($tile);
  }
}

Paint.addEventListeners = function($tile) {

  $tile.on("mousemove", function(e){
    //debugger
    console.log(e.timestamp)
    $tile.addClass("mouseOverPaint");

    var LEFT_MOUSE_BUTTON_DOWN = 1;

    if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
      //debugger
      $tile.addClass("mouseClickPaint")
    }
  });

  // $(".tile").on("mouseover", function(e){
  //   var tile = $(e.target);
  //   tile.addClass("mouseOverPaint");
  // })
  $(".tile").on("mouseout", function(e) {
    var tile = $(e.target);
    tile.removeClass("mouseOverPaint");
  })

  $tile.on("click", function(e) {
    var tile = $(e.target);
    tile.addClass("mouseClickPaint")
  })
  $tile.on("mousedown", function(e) {
    console.log(e);
    // var tile = $(e.target);
    // tile.addClass("mouseClickPaint")
  })
}



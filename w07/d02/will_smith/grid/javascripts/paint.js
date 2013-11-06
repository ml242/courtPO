var Paint = Paint || {};
Paint.createTiles = function(numRows, numCols, width) {
  for (var r = 0; r <= numRows; r++) {
    var $row = $("<div>").addClass("row");
    $('body').append($row);
    for (var c = 0; c <= numCols; c++){
      var $tile = $("<div>")
      .css("width", width)
      .css("height", width)
      .addClass("tile");

      Paint.addEventListeners($tile);

      $row.append($tile);
    }
  }
};

Paint.addEventListeners = function($tile){
  $tile.hover(function(){
    $(this).addClass("highlighted");
  }, function() {
    $(this).removeClass("highlighted");
  });

  $tile.click(function(){
    $(this).addClass("painted");
  });

  isMouseDown = false;
  $('body').mousedown(function() {
    isMouseDown = true;
  })
  .mouseup(function() {
    isMouseDown = false;
  });

  $tile.mousemove(function(){
    if(isMouseDown)
      $(this).addClass('painted');
  });
};

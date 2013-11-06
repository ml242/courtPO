var Paint = Paint || {};

Paint.createSurface = function(numRows, numCols, blockWidth, blockHeight) {
  // create # of .row div
  for (var i=0;i<numRows;i++){
    var $row = $( "<div>", { id: "row", class: "row" })
    .height(blockHeight)
    .width(blockWidth*numCols);
    $( 'body' ).append($row);
    // fill with .block divs
    for (var j=0;j<numCols;j++){
      var $block = $("<div>", { id: "block", class: "block" })
      .height(blockHeight)
      .width(blockWidth);
      //this.hoverColor($block, 'green');
      this.addEventListeners($block)
      $row.append( $block );

    }
  }
}

Paint.hoverColor = function($block, color) {
  // mouse over div, turns green
  $block.mouseover( function() { $( this ).addClass(color) });
  // mouse off div, turns back
  $block.mouseout( function() { $( this ).removeClass(color) });
}

Paint.addEventListeners = function($block) {
  // if mouseover highlight
  var LEFT_MOUSE_BUTTON_DOWN = 1;
  $block.mouseover( function(e){
    $block.addClass("highlighted");
    // if mouseover and left-button clicked, then paint
    if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
      $block.addClass("painted");
    }
  });

  // mouse off and not clicking, then just highlight
  $block.mouseout( function(){ $block.removeClass("highlighted"); });
  $block.click( function() { $block.addClass("painted"); })

}
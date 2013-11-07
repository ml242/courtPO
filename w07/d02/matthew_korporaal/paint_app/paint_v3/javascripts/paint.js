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
      this.hoverColor($block, 'green');
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

// Paint.colorByClick($block, color) {

// }
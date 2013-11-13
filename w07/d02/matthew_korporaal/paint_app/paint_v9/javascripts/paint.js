function Paint() {
  this.currentPaint = "yellow";
  this.chooseColor();
  this.createSurface(30, 30, 25, 25);
};

Paint.prototype.createSurface = function(numRows, numCols, blockWidth, blockHeight) {
  // create # of .row div
  for (var i=0;i<numRows;i++){
    var $row = $( "<div>", { id: "row", class: "row" })
    .height(blockHeight)
    .width(blockWidth*numCols);
    $( 'body' ).append($row);
    // fill with .block divs
    for (var j=0;j<numCols;j++){
      var $block = $("<div>", { id: "block", class: "block painted-white" })
      .height(blockHeight)
      .width(blockWidth);
      //this.hoverColor($block, 'green');
      this.addEventListeners($block)
      $row.append( $block );

    }
  }
}

Paint.prototype.chooseColor = function() {
  var paint = this;
  // mouse over div, turns green
  $( '.magic-button' ).each( function(){
      $( this ).click( function() {
      paint.currentPaint = this.id;
    })
  });
}

Paint.prototype.addEventListeners = function($block) {
  var paint = this;
  var LEFT_MOUSE_BUTTON_DOWN = 1;
  // if mouseover highlight
  $block.on("mousemove click", function(e){
    var currentPaint = paint.currentPaint;
    $block.addClass("hovered-"+currentPaint);
    $block.attr("hovered-color", currentPaint);
    // if mouseover and left-button clicked, then paint
    if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
      var lastColor = $block.attr("painted-color");
      $block.removeClass("painted-"+lastColor);
      $block.addClass("painted-"+currentPaint);
      $block.attr("painted-color", currentPaint);
    }
  });

  // mouse off and not clicking, then just highlight
  $block.mouseout( function(){
    lastColor = $block.attr("hovered-color");
    $block.removeAttr("hovered-color");
    $block.removeClass("hovered-"+lastColor);
    });

}
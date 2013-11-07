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
  // if mouseover highlight
  var LEFT_MOUSE_BUTTON_DOWN = 1;
  $block.mouseover( function(e){
    var currentPaint = paint.currentPaint;
    $block.addClass("hovered-"+currentPaint);
    // if mouseover and left-button clicked, then paint
    if (e.which == LEFT_MOUSE_BUTTON_DOWN) {
      $block.removeClass("painted-white")
        .removeClass("painted-green")
        .removeClass("painted-orange")
        .removeClass("painted-red")
        .removeClass("painted-purple")
        .removeClass("painted-grey");

      $block.addClass("painted-"+currentPaint);
    }
  });

  // mouse off and not clicking, then just highlight
  $block.mouseout( function(){
    $block.removeClass("hovered-white")
      .removeClass("hovered-green")
      .removeClass("hovered-orange")
      .removeClass("hovered-red")
      .removeClass("hovered-purple")
      .removeClass("hovered-grey");
    });
   $block.click( function() { $block.addClass("painted-"+this.currentPaint); })

}
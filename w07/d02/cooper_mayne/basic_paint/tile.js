function Tile() {
  this.node = $('<div>').addClass('tile').addClass('painted-grass');
  this.addListeners
}

Tile.prototype.addListeners = function() {
  $('.tile').on('mouseenter',function() {
    $(this).addClass( 'hovered-' + currentTileChoice);
  })

  $('.tile').on('mouseleave',function() {
    $(this).removeClass('hovered-' + currentTileChoice );
  })

  $('.tile').on('click',function() {
    $(this).removeClass();
    $(this).addClass('tile');
    $(this).addClass('painted-' + currentTileChoice);
  })

  $('.tile').on('mousemove',function(e) {
    if (mouseDown==1) {
      $(this).removeClass();
      $(this).addClass('tile');
      $(this).addClass('painted-' + currentTileChoice);
    }
  })
}

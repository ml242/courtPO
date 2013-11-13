function Tile() {
  debugger;
  this.node = $('<div>').addClass('tile').addClass('painted-grass');
  this.addListeners();
}

Tile.prototype.addListeners = function() {
  var that = this;

  this.node.on('mouseenter',function() {
    ( that.node ).addClass( 'hovered-' + pokemon.currentTileChoice);
  })

  this.node.on('mouseleave',function() {
    ( that.node ).removeClass('hovered-' + pokemon.currentTileChoice );
  })

  this.node.on('click',function() {
    ( that.node ).removeClass();
    ( that.node ).addClass('tile');
    ( that.node ).addClass('painted-' + pokemon.currentTileChoice);
  })

  this.node.on('mousemove',function() {
    if (pokemon.mouseDown==1) {
      ( that.node ).removeClass();
      ( that.node ).addClass('tile');
      ( that.node ).addClass('painted-' + pokemon.currentTileChoice);
    }
  })
}


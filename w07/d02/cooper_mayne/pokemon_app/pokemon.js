function Pokemon () {
  this.currentTileChoice = 'red_flowers';
  this.rowCount = 30;
  this.colCount = 45;
  this.mouseDown = 0;
  this.setUpPalette();
  this.setUpBoard();
}

Pokemon.prototype.setUpKeyboard = function() {};

Pokemon.prototype.setUpPalette = function() {

  var paletteColors = ["grass","red_flowers","weed","weed_4x","weed_small","week_2x","box","fence_1","fence_2","fence_3","fence_4","fence_5","fence_6","fence_7","fence_8","fence_9","mountain_1","mountain_2","mountain_3","mountain_4","mountain_5","mountain_6","mountain_7","mountain_8","mountain_9","mountain_entrance","rock_1","rock_2","sign","tree_1","tree_2","urn","water_1","water_2","water_3","water_4","water_5","water_6","water_7","water_8","water_9"];

  $.each(paletteColors, function(index, color) {
    var pal = $('<div>').addClass(color).addClass('pal');
    $('#color-palette').append(pal);
  });

  
  $('#color-palette > *').on('click', function () {
    // set the paint color class to the div's color
    pokemon.currentTileChoice = $(this).attr('class');
  });
}

Pokemon.prototype.setUpBoard = function() {
  var pokemonApp = this;
  document.body.onmousedown = function() { 
    ++pokemonApp.mouseDown;
  }
  document.body.onmouseup = function() {
    --pokemonApp.mouseDown;
  }

  //default tile choice
  //make the board
  for (var i = 0; i < this.rowCount; i++) {
    var row = $("<div>").addClass("row");
    for (var j = 0; j < this.colCount; j++) {
      var col = new Tile();
      row.append(col.node);
    };
    $('#board').append(row);
  };
};

function Pokemon(){
  this.selectedTile = 'grass';
  this.addTilePicker();
  this.buildGrid(200);
}

Pokemon.prototype.buildGrid = function(numTiles) {
  var numRows = numTiles / 20;
  for (var i = 0; i < numRows; i++) {
    var newRow = $('<div>');
    newRow.addClass('row');
    $('#pokemon-container').append(newRow);

    for (var j = 0; j < 25; j++) {
      var newTile = $('<div>');
      newTile.addClass('tile blank-tile');
      newRow.append(newTile);
    }
  }
  this.addTileEventListeners();
};

Pokemon.prototype.addTilePicker = function(){
  var self = this;
  var tileChoices = ['grass','red_flowers','weed','weed_4x','weed_small','week_2x','box','fence_1','fence_2','fence_3','fence_4','fence_5','fence_6','fence_7','fence_8','fence_9','mountain_1','mountain_2','mountain_3','mountain_4','mountain_5','mountain_6','mountain_7','mountain_8','mountain_9','mountain_entrance','rock_1','rock_2','sign','tree_1','tree_2','urn','water_1','water_2','water_3','water_4','water_5','water_6','water_7','water_8','water_9'];
  var tileChoicePicker = $('.tile-choice-picker');
  for (var i = 0; i < tileChoices.length; i++) {
    var newTile = $('<div>');
    newTile.addClass('palette ' + tileChoices[i]);
    newTile.data('tile', tileChoices[i]);
    tileChoicePicker.append(newTile);
    newTile.on('click', function(){
      $('.palette').removeClass('selected');
      $(this).addClass('selected');
      self.selectedTile = $(this).data('tile');
    });
  }
};

Pokemon.prototype.addTileEventListeners = function(){
  var self = this;
  $('.tile').mouseover(function(e){
    $(this).addClass('highlight');
  }).mouseout(function(){
    $(this).removeClass('highlight');
  });

  $('.tile').on('mousemove click', function(e){
    if (e.which === 1){
      $(this).removeClass();
      $(this).addClass('tile');
      $(this).addClass(self.selectedTile);
    }
  });
};

Pokemon.prototype.playGame = function(){
  var tiles = $('.blank-tile');
  $.each(tiles, function(index, tile) {
    $(tile).removeClass('blank-tile');
    $(tile).addClass('grass');
  });
  var pika = $('<span>');
  pika.addClass('pika');
  $('#pokemon-container').append(pika);
  $('.tile-choice-picker').remove();
};


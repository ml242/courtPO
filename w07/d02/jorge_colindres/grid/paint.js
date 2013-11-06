function Paint(){
  this.selectedColor = 'green';
  this.addColorPicker();
  this.buildGrid(50);
}

Paint.prototype.buildGrid = function(numTiles) {
  var numRows = numTiles / 10;
  for (var i = 0; i < numRows; i++) {
    var newRow = $('<div>');
    newRow.addClass('row');
    $('#painting-container').append(newRow);

    for (var j = 0; j < 10; j++) {
      var newTile = $('<div>');
      newTile.addClass('tile');
      newRow.append(newTile);
    }
  }
  this.addTileEventListeners();
};

Paint.prototype.addColorPicker = function(){
  var self = this;
  var colors = ['green', 'red', 'blue'];
  var colorPicker = $('.color-picker');
  for (var i = 0; i < colors.length; i++) {
    var newColor = $('<div>');
    newColor.addClass('palette ' + colors[i]);
    newColor.data('color', colors[i]);
    colorPicker.append(newColor);
    newColor.on('click', function(){
      $('.palette').removeClass('selected');
      $(this).addClass('selected');
      self.selectedColor = $(this).data('color');
    });
  }
};

Paint.prototype.addTileEventListeners = function(){
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
      $(this).addClass(self.selectedColor);
    }
  });
};


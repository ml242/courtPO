function Paint(){
  this.selectedColor = 'green';
}


Paint.prototype.buildGrid = function(numTiles) {
  var numRows = numTiles / 10;
  for (var i = 0; i < numRows; i++) {
    var newRow = $('<div>');
    newRow.addClass('row');
    $('body').append(newRow);

    for (var j = 0; j < 10; j++) {
      var newTile = $('<div>');
      newTile.addClass('tile');
      newRow.append(newTile);
    }
  }
};
Paint.prototype.addColorPicker = function(){
  var self = this;
  $('.palette').click(function(){
    self.selectedColor = $(this).data('color');
  });
};

Paint.prototype.addEventLists = function(){
  var self = this;
  $('.tile').mouseover(function(e){
    $(this).addClass('highlight');
  }).mouseout(function(){
    $(this).removeClass('highlight');
  });

  $('.tile').on('mousemove', function(e){
    if (e.which === 1){
      $(this).removeClass();
      $(this).addClass('tile');
      $(this).addClass(self.selectedColor);
    }
  });

  $('.tile').on('click', function(){
    $(this).removeClass();
    $(this).addClass('tile');
    $(this).addClass(self.selectedColor);
  });
};


$(function(){
  var paintMS = new Paint();
  paintMS.buildGrid(50);
  paintMS.addColorPicker();
  paintMS.addEventLists();
});


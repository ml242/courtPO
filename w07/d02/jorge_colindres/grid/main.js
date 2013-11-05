function buildGrid(numTiles) {
  for (var i = 0; i < numTiles; i++) {
    var newTile = $('<div>');
    newTile.addClass('tile');
    $('body').append(newTile);
  }
}

$(function(){
  buildGrid(50);
  $('.tile').mouseover(function(){
    $(this).addClass('highlight');
  }).mouseout(function(){
    $(this).removeClass('highlight');
  });
  $('.tile').click(function(){
    $(this).addClass('selected');
  });
});

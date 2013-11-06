$(function(){
  var game = new Pokemon();
  $('#play').on('click', function(){
    game.playGame();
  });
});

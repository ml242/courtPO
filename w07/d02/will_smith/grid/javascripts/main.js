var Paint = Paint || {};

$(function(){
  Paint.createTiles(1000, 64, 64);
  $('div').hover(
    function(){
      $(this).addClass("green");
    }, function() {
      $(this).removeClass("green");
    });
});


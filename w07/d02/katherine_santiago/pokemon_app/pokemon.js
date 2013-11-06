$( document ).ready(function() {

  var $body = $('body');

  var createTile = function() {
    var div = $("<div>");
    div.addClass("tile");
    $body.append(div);
  }

  for (var i=0; i < 100; i++) {
    createTile();
  }

});

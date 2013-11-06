var Paint = Paint || {};
Paint.createTiles = function(numTiles, width, height) {
  for (var i = 1; i <= numTiles; i++) {
    var div = $("<div>", {class: "tile"})
    .css("width", width)
    .css("height", height);
    $('body').append(div);
  }
};

Paint.addEventListeners = function(){
  $('div').hover(
    function(){
      $(this).addClass("green");
    }, function() {
      $(this).removeClass("green");
    });
};

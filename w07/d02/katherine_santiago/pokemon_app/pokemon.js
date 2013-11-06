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

  // mouseover a tile and it adds class hover-turquoise
  // the class adds background color to the tile
  $(".tile").on("mouseover", function() {
    $(this).addClass("hover-turquoise");
  });

  // mouse away from a tile (mouseout) and the hover class
  // is removed
  $(".tile").on("mouseout", function() {
    $(this).removeClass("hover-turquoise");
  });

  // click on a tile and it adds a paint (permanent class)
  $(".tile").on("click", function() {
    $(this).addClass("paint-turquoise");

    $(".tile").on("mouseover", function() {
      $(this).addClass("paint-turquoise");

    $(".tile").on("mouseup", function() {
      $(".tile").unbind("mouseover");

    });
    });

  });

  // while i hold down the left mousebutton
  $(".tile").mousedown(function() {
    $(this).addClass("paint-turquoise");
  // continue painting until mouseup
  })


});

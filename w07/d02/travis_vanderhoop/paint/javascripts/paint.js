// today I learned that function travis() {} is declarative,
// while var travis = function() {} is anonymous. I should tell Natasha so she knows

// function generateTiles(numTiles) {
//   var $container = $('#container')
//   for (i = 0; i < numTiles; i++) {
//     var $newTile = $('<div>');
//         $newTile.addClass('tile');
//         $newTile.hover( function() {
//           $(this).addClass("hover-green");
//         },
//         function(){ $(this).removeClass('hover-green');
//         });
//         $newTile.on("mousedown",
//           function() {
//             $(this).addClass("paint-green");
//             $('.tile').on("mouseover",
//               function(){
//                 $(this).addClass("paint-green");
//               }).on("mouseup", function() {
//                 $('.tile').off("mouseover")
//               });
//           });
//         // I want to append each new tile to the Row
//         // I want to append each new row to the container
//         $container.append($newTile)
//   }
// }

function generateTiles(numRows, numTiles, tileWidth) {
  var $body = $('body')
  for (var rowCount = 0; rowCount < numRows; rowCount++) {
    var $newRow = $('<div>').addClass("row")
    for (var tileCount = 0; tileCount < numTiles; tileCount++) {
      var $newTile = $('<div>').addClass('tile');
          $newTile.css("height", tileWidth).css("width", tileWidth);
          $newTile.hover( function() {
            $(this).addClass("hover-green");
          },
          function(){ $(this).removeClass('hover-green');
          });
          $newTile.on("mousedown",
            function() {
              $(this).addClass("paint-green");
              $('.tile').on("mouseover",
                function(){
                  $(this).addClass("paint-green");
                }).on("mouseup", function() {
                  $('.tile').off("mouseover")
                });

            });
        // I want to append each new tile to the Row
        // I want to append each new row to the container
        $newRow.append($newTile);
    }
    $body.append($newRow);
  }
}


$(document).ready(function(){
    console.log('yo')
    generateTiles(100,75,50);

});















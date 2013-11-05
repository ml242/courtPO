$(document).ready(function() {

  function repeat(fn, times) {
    for (var i =0; i < times; i++)  {
      fn()
    }
  }

  function generateTiles() {
  //<div class = 'tile'></div>
  var newTile = $("<div>")
    newTile.addClass('tile')
    $('body').append(newTile)
    newTile.on("mouseover", hoverRed )
    newTile.on("mouseout", removeColor )
  }

  function hoverRed() {
    $(this).addClass('red')
  }
  function removeColor() {
    $(this).removeClass('red')
  }

  repeat(generateTiles, 272)

})





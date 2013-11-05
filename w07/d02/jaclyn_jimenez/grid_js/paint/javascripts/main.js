$(document).ready(function() {
  var clicked = 0

  function repeat(fn, times) {
    for (var i =0; i < times; i++)  {
      fn()
    }
  }

  function Tile() {
  var newTile = $("<div>")
    newTile.addClass('tile')
    $('body').append(newTile)
    newTile.on("mouseover", hoverRed )
    newTile.on("mouseout", removeColor )
    newTile.on("mousedown", stayRed )
    newTile.on("mouseup", stopRed )
  }

  function generateTiles() {
  //<div class = 'tile'></div>
  new Tile()
  }

  function hoverRed() {
    $(this).addClass('redHover')
    if (clicked == 1) {
      $(this).addClass('red')
    }
    }

  function removeColor() {
    $(this).removeClass('redHover')
  }

  function stayRed() {
    $(this).addClass('red')
    clicked = 1
  }
  function stopRed() {
    clicked = 0
  }

  // function stayDownRed() {
  //   $(this).addClass('red')
  //   $('div').mouseover(function(){$(this).addClass('red')})
  // }

  repeat(generateTiles, 272)

})





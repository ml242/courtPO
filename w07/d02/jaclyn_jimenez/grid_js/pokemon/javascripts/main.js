$(document).ready(function() {
  var clicked = 0
  var color = "grass"

  // <div class = 'colorPalet'>
  // <div class = 'tile red palet' id = 'red'></div>
  // <div class = 'tile yellow palet' id = 'yellow'></div>
  // <div class = 'tile green palet' id = 'green'></div>
  // <div class = 'tile black palet' id = 'black'></div>
  // </div>

  function palet() {
    var palletColors = ["grass", "red_flowers", "flower_2x", "flower_5x", "weed","weed_4x", "box","fence_1", "mountain_1", "mountain_entrance","rock_1","rock_2","sign","tree_1","tree_2","urn"];
    $palet = $("#colorPalet")

    $.each(palletColors, function(i, color) {
      $brush = $("<div>")
        .addClass("tile")
        .addClass("palet")
        .attr('id', color)
        .addClass(color)
      $palet.append($brush)
      $brush.on("click", brush)
    })
  }

  function repeat(times, fn) {
    for (var i =0; i < times; i++)  {
      fn()
    }
  }
  function Tile() {
    this.tileNode = $("<div>")
      .addClass('tile')
      .on("mouseover", hoverColor )
      .on("mouseout", removeColor )
      .on("mousedown", stayColor )
      .on("mouseup", stopColor )
      .css('cursor', 'crosshair');
  }
  function Row() {
    this.rowNode = $("<div>")
      .addClass('row')
  }
  function generateRows() {
    var newRow = new Row()
    repeat(25, function(){
      var newTile = new Tile()
      newRow.rowNode.append(newTile.tileNode)
    })
  $('body').append(newRow.rowNode)
  }
  function hoverColor() {
    $(this).addClass(color+'Hover')
    if (clicked == 1) {
      $(this).addClass(color)
    }
  }
  function removeColor() {
    $(this).removeClass(color+'Hover')
  }
  function stayColor() {
    $(this).addClass(color)
    clicked = 1
  }
  function stopColor() {
    clicked = 0
  }
  function brush(){
    color = this.id
  }


  repeat(16, generateRows)
  palet()
})





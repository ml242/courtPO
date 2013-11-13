$(document).ready(function() {
  var clicked = 0
  var color = 'red'

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
    repeat(30, function(){
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
    console.log("got it! "+this.id)
    color = this.id
  }
  var redBrush = $('#red').on("click", brush )
  var yellowBrush = $('#yellow').on("click", brush )
  var greenBrush = $('#green').on("click", brush )
  var blackBrush = $('#black').on("click", brush )

  repeat(26, generateRows)
})





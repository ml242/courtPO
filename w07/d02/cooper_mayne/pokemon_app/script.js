var paletteColors = ["grass","red_flowers","weed","weed_4x","weed_small","week_2x","box","fence_1","fence_2","fence_3","fence_4","fence_5","fence_6","fence_7","fence_8","fence_9","mountain_1","mountain_2","mountain_3","mountain_4","mountain_5","mountain_6","mountain_7","mountain_8","mountain_9","mountain_entrance","rock_1","rock_2","sign","tree_1","tree_2","urn","water_1","water_2","water_3","water_4","water_5","water_6","water_7","water_8","water_9"];


var mouseDown = 0;
document.body.onmousedown = function() { 
  ++mouseDown;
}
document.body.onmouseup = function() {
  --mouseDown;
}

var paintColorClass = 'grass'

//make the board
var rowCount = 30;
var colCount = 45;

for (var i = 0; i < rowCount; i++) {
  var row = $("<div>").addClass("row");
  for (var j = 0; j < colCount; j++) {
    var col = $('<div>').addClass('tile').addClass('painted-grass');
    row.append(col);
  };
  $('#board').append(row);
};


//set up the palette

$.each(paletteColors, function(index, color) {
  console.log(color);
  var pal = $('<div>').addClass(color).addClass('pal');
  $('#color-palette').append(pal);
})

$('#color-palette > *').on('click',function() {
  // set the paint color class to the div's color
  paintColorClass = $(this).attr('class')
})

$('.tile').on('mouseenter',function() {
  $(this).addClass( 'hovered-' + paintColorClass);
})

$('.tile').on('mouseleave',function() {
  $(this).removeClass('hovered-' + paintColorClass );
})

$('.tile').on('click',function() {
  $(this).removeClass();
  $(this).addClass('tile');
  $(this).addClass('painted-' + paintColorClass);
})

$('.tile').on('mousemove',function(e) {
  if (mouseDown==1) {
    $(this).removeClass();
    $(this).addClass('tile');
    $(this).addClass('painted-' + paintColorClass);
  }
})

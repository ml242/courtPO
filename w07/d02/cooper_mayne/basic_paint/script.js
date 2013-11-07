var paintColorClass = 'black'

var mouseDown = 0;
document.body.onmousedown = function() { 
  ++mouseDown;
}
document.body.onmouseup = function() {
  --mouseDown;
}

for (var i = 0; i < 4000; i++) {
  $('body').append('<div class="tile"></div');
};

$('.tile').on('mouseenter',function() {
  $(this).addClass(paintColorClass + '-hover');
})

$('.tile').on('mouseleave',function() {
  $(this).removeClass(paintColorClass + '-hover');
})

$('.tile').on('click',function() {
  $(this).removeClass();
  $(this).addClass('tile')
  $(this).addClass(paintColorClass + '-painted');
})

$('.tile').on('mousemove',function(e) {
  if (mouseDown==1) {
    $(this).removeClass();
    $(this).addClass('tile')
    $(this).addClass(paintColorClass + '-painted');
  }
})

$('#color-palette > *').on('click',function() {
  // set the paint color class to the div's color
  paintColorClass = $(this).attr('class')
})

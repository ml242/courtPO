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
  $(this).addClass('black');
})

$('.tile').on('mouseleave',function() {
  $(this).removeClass('black');
})

$('.tile').on('click',function() {
  $(this).addClass('blackp');
})

$('.tile').on('mousemove',function(e) {
  if (mouseDown==1) {
    $(this).addClass('blackp');
  }
})

//var colorHistory = [[0,0,0]]
//var colorHistoryIndex = 0

//$("#colorButton").on("click", function() {
  //rVar = parseInt($('input[name=r]')[0].value)
  //gVar = parseInt($('input[name=g]')[0].value)
  //bVar = parseInt($('input[name=b]')[0].value)
  //var colorsRGB = [rVar,gVar,bVar];
  //colorHistory.push(colorsRGB);
  //rgbaString = "rgb("+ colorsRGB.join(',')+")";
  //$('body').css("background-color", rgbaString);
//})

//$('#cycleColorButtons').on("click", function(){
  //var ind = colorHistoryIndex%colorHistory.length;
  //var colorsRGB = colorHistory[ind];

  //rgbaString = "rgb("+ colorsRGB.join(',')+")";
  //$('body').css("background-color", rgbaString);

  //colorHistoryIndex++;
//})

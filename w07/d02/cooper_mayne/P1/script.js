var colorHistory = [[0,0,0]]
var colorHistoryIndex = 0

$("#colorButton").on("click", function() {
  rVar = parseInt($('input[name=r]')[0].value)
  gVar = parseInt($('input[name=g]')[0].value)
  bVar = parseInt($('input[name=b]')[0].value)
  var colorsRGB = [rVar,gVar,bVar];
  colorHistory.push(colorsRGB);
  rgbaString = "rgb("+ colorsRGB.join(',')+")";
  $('body').css("background-color", rgbaString);
})

$('#cycleColorButtons').on("click", function(){
  var ind = colorHistoryIndex%colorHistory.length;
  var colorsRGB = colorHistory[ind];

  rgbaString = "rgb("+ colorsRGB.join(',')+")";
  $('body').css("background-color", rgbaString);

  colorHistoryIndex++;
})

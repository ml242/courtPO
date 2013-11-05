$("document").ready(function() {

  var colorArray = ["white", "pink", "red", "blue"]
  var backgroundState = 0;
  var colorIndex = 0;

  $("#change-color").on('click', function() {
    var previousColor = colorArray[colorIndex];
    $("body").removeClass(previousColor);

    colorIndex++

    if (colorIndex === colorArray.length) {
      colorIndex = 0;
    }

    var nextColor = colorArray[colorIndex];
    $("body").addClass(nextColor);

  })
})

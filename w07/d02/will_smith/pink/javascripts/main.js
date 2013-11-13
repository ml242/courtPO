console.log("hi");
$(function() {
  var colors = ["pink", "turquoise", "emerald", "peter-river", "amethyst", "wet-asphalt", "sun-flower", "carrot", "alizarin", "clouds", "concrete", "white"];
  var colorIndex = 0;
  $("h1").on("click", function() {
    var color = colors[colorIndex];
    $("body").addClass(color);
    colorIndex++;
    if (colors.length === 11) {
      colorIndex = 0;
    }
  });
});

$(document).ready(function () {
  COLORS = ["red", "blue", "green", "yellow", "pink", "purple"];
  var onClick = function(e) {
     var color = $("body").attr("class")
     var nextColor = COLORS.indexOf(color) + 1
     $("body").removeClass();
     $("body").addClass(COLORS[nextColor % COLORS.length]);
    // if ($("body").hasClass("pink")) {
    //   $("body").removeClass();
    // }
    // else {
    //   $("body").addClass("pink");
    // }
  };

  $("#button").on("click", onClick);
});

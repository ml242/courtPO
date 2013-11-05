$(document).ready(function () {

  onClick = function(e) {
    if ($("body").hasClass("pink")) {
      $("body").removeClass();
    }
    else {
      $("body").addClass("pink");
    }
  };

  $("#button").on("click", onClick);
});

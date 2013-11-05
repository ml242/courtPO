$("document").ready(function() {

  $("#change-color").on('click', function() {

    if ($("body").hasClass("pink")) {
      $("body").removeClass("pink")
    } else {
      $("body").addClass("pink");
    }
  })
})

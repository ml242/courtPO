$(document).ready(function () {

onClick = function(e) {
  $("body").addClass("pink");
};

$("#button").on("click", onClick);
});

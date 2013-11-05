$(document).ready(function () {

onClick = function(e) {
  $("body").css("background-color", "pink");
};

$("#button").on("click", onClick);
});

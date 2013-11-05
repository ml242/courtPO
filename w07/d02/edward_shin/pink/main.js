$(document).ready(function(){
  console.log('im ready bitch')
  //changes background with click using .css
  // $("button").on("click", function() {
  //   $("body").css("background-color", "pink")
  // });

  //changes background using .class
  $("button").on("click", function() {
    $("body").addClass("pink");
  })

});
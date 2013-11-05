$( document ).ready(function() {
  var clickMe = document.getElementById("click-me");
  clickMe.addEventListener("click", function(){
    $( document.body ).css("background-color", "pink");
  });

});
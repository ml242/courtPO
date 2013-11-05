$(document).ready(function(){
  console.log('im ready bitch')

  var colorsArray = ["pink", "blue", "green", "yellow", "purple"];
  var i = 0;

  $("button").on("click", function() {
    if (i === colorsArray.length-1)
      {i = 0;$("body").attr("class", colorsArray[i]);}
    else
      i++;
      {$("body").attr("class", colorsArray[i]);}
  })

});


  // var clicked = false;
  //changes background with click using .css
  // $("button").on("click", function() {
  //   $("body").css("background-color", "pink")
  // });

  //turns it on/off using .toggle
  // $("button").on("click", function() {
  //   var colorsArray = ["pink", "blue", "green", "yellow", "purple"];
  //   var randColor = colorsArray[Math.floor(Math.random()*colorsArray.length)];
  //   $("body").toggleClass("pink");
  // });

  //turns it on/off capturing state
  // $("button").on("click", function() {
  //   if (clicked) {
  //     $("body").removeClass("pink");
  //     clicked = false;
  //   } else {
  //     $("body").addClass("pink");
  //     clicked = true;
  //   }
  // });
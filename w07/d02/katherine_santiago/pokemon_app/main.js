$( document ).ready(function() {

  var $h1Tag = $("h1");
  var $bodyTag = $("body");

  // $h1Tag.on("click", addKlass);
  // $h1Tag.on("click", changeKlass);
  $h1Tag.on("click", changeColor);


  // function addKlass() {
  //   $bodyTag.addClass("pink");
  // }

  // function changeKlass() {
  //   if ($bodyTag.hasClass("pink")) {
  //     $bodyTag.removeClass("pink");
  //   } else {
  //     $bodyTag.addClass("pink");
  //   }
  // }

  var colors = ["turquioise", "emerald", "peter", "amethyst"];
  var colorIndex = 0;

  function changeColor() {

    // Remove the class for the previous color
    var previousColor = colors[colorIndex];
    $bodyTag.removeClass();


    // Increment the color index.
    colorIndex++;

    if (colorIndex === colors.length) {
      colorIndex = 0;
    }

    // Add the class for the next color
    var nextColor = colors[colorIndex];
    $bodyTag.addClass(nextColor);

    // $bodyTag.removeClass;
    // $bodyTag.className
    // pick a random number so that the colors appear ramdomly
    // var number = Math.floor(Math.random() * colorz.length);
    // $bodyTag.addClass(colorz[number]);
    // $bodyTag.css("background-color", "#" + colorz[index]);
  }
});




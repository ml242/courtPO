$( document ).ready(function() {

// creates the <div> "click me", gives it an id and text content & adds it to the DOM
$click_me = $("<div/>", {
  id: "click-me",
  text: "Click Me"
  // steps 1 - 3
  // pink: false
}).appendTo($("body"));

// this adds the click function to the "click me" div
// steps 1-3
// $click_me.on("click", colorPink);
// step 4
$click_me.on("click", colorCycle);

// this defines the function to turn the background color of the body pink
// function colorPink(e) {
//   if ($click_me.pink) {
//     $("body").removeClass("pink");
//     $click_me.pink = false;
//   } else {
//     $("body").addClass("pink");
//     $click_me.pink = true;
//   }
// }

// step 4
$click_me.colorArray = ["pink", "green", "orange", "blue", "red", "purple", "yellow"];
$click_me.currentColor = 0;

// this is buggy and skips colors, look at how it increments the current color
function colorCycle(e) {
  if ($click_me.currentColor === $click_me.colorArray.length - 1) {
    $("body").removeClass($click_me.colorArray[$click_me.currentColor]);
    $click_me.currentColor = 0;
  } else {
    $("body").removeClass($click_me.colorArray[$click_me.currentColor]);
    $click_me.currentColor++;
    $("body").addClass($click_me.colorArray[$click_me.currentColor]);
  }
}




});



// 1_click_to_pink_inline_css
// Use JQuery so that when you click on "Click Me", it will make the page have a pink background. Use JQuery's .css method to do this first which changes it's inline style
// $("#button").click(function() {
//   $("#page").css("background-color", "pink");
// });

//2_click_to_pink_via_setting_class
//Instead of changing inline styles, it is much better to add and remove class names to change functionality. Use jQuery's .addClass and .on function to do this.
// $("#button").click(function() {
//   $("#page").addClass("changeBackgroundPink");
// });

//3_click_to_pink_click_to_unpink
//Now when you click on it again, make it so that the background is no longer pink
$("#button").click(function(){
  var $page = $("#page");
  if ($page[0].className === "changeBackgroundPink") {
    $("#page").removeClass("changeBackgroundPink");
  } else {
    $("#page").addClass("changeBackgroundPink");
  }
});
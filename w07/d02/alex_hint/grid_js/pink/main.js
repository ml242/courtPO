// 1_click_to_pink_inline_css
// Use JQuery so that when you click on "Click Me", it will make the page have a pink background. Use JQuery's .css method to do this first which changes it's inline style
$("#page").click(function() {
  $(this).css("background-color", "pink");
});
//2_click_to_pink_via_setting_class
//Instead of changing inline styles, it is much better to add and remove class names to change functionality. Use jQuery's .addClass and .on function to do this.

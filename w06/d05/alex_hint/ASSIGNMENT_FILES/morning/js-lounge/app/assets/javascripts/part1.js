// set variables for the elements
var colorInput = document.getElementById("color-input");
var colorBtn = document.getElementById("color-btn");
var box = document.getElementById("box");

function setBoxColor() {
  // wait to get the input's value until
  // the event fires.
  var color = colorInput.value;
  box.style.backgroundColor = color;
}
colorBtn.addEventListener("click", setBoxColor);
var colorInput = document.getElementById("color-input");
var sizeInput = document.getElementById("size-input");
var boxBtn = document.getElementById("box-btn");

function createBox() {
  var color = colorInput.value;
  var sideLength = sizeInput.value;
  var box = document.createElement("div");
  box.className = "box";
  box.style.width = sideLength;
  box.style.height = sideLength;
  box.style.backgroundColor = color;
  document.body.appendChild(box);
}
boxBtn.addEventListener("click", createBox);

var start = document.createElement("h2");
start.textContent = "Click here to start";
clickFunction = function(e) {
  game = new Game();
}
document.body.appendChild(start);
start.addEventListener("click", clickFunction);


var container = document.createElement("div");
container.id = "container";
document.body.appendChild(container);
var letters = document.createElement("div");
letters.id = "letters";
container.appendChild(letters);
var instructions = document.createElement("div");
instructions.textContent = "Click a letter to see if it's part of the word.";
instructions.id = "instructions"
container.appendChild(instructions);
hoverFunction = function(e) {
  instructions.style.display = "block";
}
mouseoutFunction = function(e) {
  instructions.style.display = "none";
}
container.addEventListener("mouseover", hoverFunction);
container.addEventListener("mouseout", mouseoutFunction);

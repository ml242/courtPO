
var start = document.createElement("h1");
start.textContent = "Click here to start";
clickFunction = function(e) {
  var game = new Game();
  game.play();
}
document.body.appendChild(start);
start.addEventListener("click", clickFunction);

var letters = document.createElement("div");
letters.id = ("letters");
document.body.appendChild(letters);

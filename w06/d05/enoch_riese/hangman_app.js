game = new Game();
var start = document.createElement("h1");
start.textContent = "Click here to start";
clickFunction = function(e) {
  game.play();
}
document.body.appendChild(start);
start.addEventListener("click", clickFunction);

var letters = document.createElement("div");
letters.id = "letters";
document.body.appendChild(letters);

var allLetters = "abcdefghijklmnopqrstuvwxyz".split("");
var alphabet = document.createElement("ul");
for (var i = 0; i < allLetters.length; i++) {
  var liTag = document.createElement("li");
  var strTag = document.createElement("strong");
  liTag.id = allLetters[i];
  strTag.textContent = allLetters[i];
  liTag.appendChild(strTag);
  alphabet.appendChild(liTag);
  var clickFunction = function(e) {
    game.checkLetter(this.id);
  }
  liTag.addEventListener("click", clickFunction);
};
document.body.appendChild(alphabet);

var Game = function() {
  this.words = ["scuttle", "ballad", "awkward", "ratchet", "states", "baseless", "anger"];
  this.errors = 8;
  this.chooseWord();
  console.log(this.word);
  letters.textContent = this.blanks.join(" ");


  var allLetters = "abcdefghijklmnopqrstuvwxyz".split("");
  if (document.getElementById("alphabet")){
    var alph = document.getElementById("alphabet");
    container.removeChild(alph);
  };
  var alphabet = document.createElement("ul");
  alphabet.id = "alphabet";
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
  container.appendChild(alphabet);

}

Game.prototype.chooseWord = function() {
  this.blanks = [];
  this.word = this.words[Math.floor(Math.random()*this.words.length)];
  this.letters = this.word.split("");
  for (var i = this.letters.length - 1; i >= 0; i--) {
    this.blanks[i] = "_ ";
  };
  return this.blanks;
};

Game.prototype.checkLetter = function(letter) {
  var guessed = false;
  for (var i = 0; i < this.letters.length; i++) {
    if (this.letters[i] == letter) {
      this.blanks[i] = letter;
      var guessed = true;
      var letterDiv = document.getElementById(letter);
      letterDiv.className = "correct_letter";
    };
  };
  if (guessed == false) {
    this.errors--;
    var letterDiv = document.getElementById(letter);
    letterDiv.className = "guessed_letter";
  }
  letters.textContent = this.blanks.join(" ");
  var stillBlanks = false;
  for (var i = this.blanks.length - 1; i >= 0; i--) {
    if (this.blanks[i] == "_ ") {
      stillBlanks = true;
    };
  };
  if (stillBlanks == false) {
    alert("You won!");
    return won;
  };
  if (this.errors == 0) {
    var won = false;
    alert("You lost!")
    return won;
  }
};
Game.prototype.play =  function() {
};

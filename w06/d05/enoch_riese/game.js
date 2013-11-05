var Game = function() {
  this.words = ["scuttle", "ballad", "awkward", "ratchet", "states", "baseless", "anger"];
}

Game.prototype.chooseWord = function() {
  this.blanks = [];
  this.word = this.words[Math.floor(Math.random()*this.words.length)];
  this.letters = this.word.split("");
  for (var i = this.letters.length - 1; i >= 0; i--) {
    this.blanks[i] = "___ ";
  };
  return this.blanks;
};
Game.prototype.checkLetter = function() {
  var letter = prompt("Guess a letter")
  var guessed = false;
  for (var i = 0; i < this.letters.length; i++) {
    if (this.letters[i] == letter) {
      this.blanks[i] = letter;
      var guessed = true;
    };
  };
  if (guessed == false) {
    this.errors--;
  }
  return this.blanks;
};
Game.prototype.play =  function() {
  this.errors = 8;
  var letterDiv = document.getElementById("letters");
  this.chooseWord();
  console.log(this.word);
  letters.textContent = this.blanks.join(" ");
  while (this.errors > 0) {

    this.checkLetter();
    console.log(this.blanks);
    letters.textContent = this.blanks.join(" ");
    var stillBlanks = false;
    for (var i = this.blanks.length - 1; i >= 0; i--) {
      if (this.blanks[i] == "___ ") {
        stillBlanks = true;
      };
    };
    if (stillBlanks == false) {
      alert("You won!");
      return won;
    };
  }
  var won = false;
  alert("You lost!")
  return won;
};

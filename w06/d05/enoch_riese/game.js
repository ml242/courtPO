var Game = function() {
  this.words = ["scuttle", "ballad", "awkward", "ratchet", "states", "baseless", "anger"];
  this.guessedLetters = [];
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
  // this.guessedLetters.push(letter);
  // var guessedDiv = document.getElementById("guessed");
  // guessedDiv.textContent = this.guessedLetters.join(", ")
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
  // }
  if (this.errors == 0) {
    var won = false;
    alert("You lost!")
    return won;
  }
};
Game.prototype.play =  function() {
  this.errors = 8;
  var letterDiv = document.getElementById("letters");
  this.chooseWord();
  console.log(this.word);
  letters.textContent = this.blanks.join(" ");
  // while (this.errors > 0) {
  //   letters.textContent = this.blanks.join(" ");
  //
    // this.checkLetter();

  };

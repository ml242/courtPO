function Hangman() {
  this.current_guessed = [];
  this.wordList = ["ruby", "rails", "program", "computer", "language"];
  this.guessForm = document.getElementById("guess-form");
  this.guessBox = document.getElementById("guess-box");
};

Hangman.protoype.chooseWord = function() {
  var num = Math.ceil(Math.random() * 5);
  this.secretWord = this.wordList[num];

}



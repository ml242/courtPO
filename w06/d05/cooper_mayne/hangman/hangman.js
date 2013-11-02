var HangmanGame = HangmanGame || {};

HangmanGame.Hangman = function() {
  this.guesses = 0; // initialize guesses, always starts at 0
  this.games_won = 0;
  this.total_games = 0;
  this.word_list = ["Lorem", "Sed", "accumsan", "aliquam", "enim", "Etiam", "hendrerit"];
  this.word = "";
}

HangmanGame.Hangman.prototype.play = function() {
  //start a new round
   this.word = this.word_list[this.total_games];
   console.log(this.word)
};

HangmanGame.Hangman.prototype.checkGuess = function(letter) {
  //takes a guess checks it and direct to appropriate function
};

HangmanGame.Hangman.prototype.correctGuess = function() {
  //handle correct guess
};

HangmanGame.Hangman.prototype.wrongGuess = function() {
  //handle incorrect guess
};

HangmanGame.Hangman.prototype.has_won = function() {
  //check if user has won this round and direct appropriately
};

HangmanGame.Hangman.prototype.has_lost = function() {
  //check if user has lost this round and direct appropriately
};


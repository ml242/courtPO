var HangmanGame = HangmanGame || {}

HangmanGame.Hangman = function() {
  this.guesses = []; // initialize guesses, always starts at 0
  this.guessLimit = 6; //set it here for easy changing later
  this.games_won = 0;
  this.total_games = 0;
  this.word_list = ["lo", "sed", "accumsan", "aliquam", "enim", "etiam", "hendrerit"];
}


HangmanGame.Hangman.prototype.play = function() {
  //start a new round
  this.word = this.word_list[this.total_games].split("");
  this.current_guessed = [];
  console.log(this.word);
}

HangmanGame.Hangman.prototype.checkGuess = function(letter) {
  //takes a guess checks it and direct to appropriate function
  this.word.indexOf(letter) == -1 ? this.wrongGuess(letter) : this.correctGuess(letter);
}

HangmanGame.Hangman.prototype.correctGuess = function(letter) {
  //handle correct guess
  for (var i = 0; i < this.word.length; i++) {
    if (this.word[i] == letter) { this.current_guessed[i] = letter }  
  };
  this.hasWon();
}

HangmanGame.Hangman.prototype.wrongGuess = function(letter) {
  //handle incorrect guess
  this.guesses.push(letter);
  this.hasLost();
}

HangmanGame.Hangman.prototype.hasWon = function() {
  //check if user has won this round and direct appropriately
  if (this.word.join() == this.current_guessed.join() ) {
    console.log("you won!!")
  }
}

HangmanGame.Hangman.prototype.hasLost = function() {
  //check if user has lost this round and direct appropriately
  if( this.guesses.length >= this.guessLimit ) {
    console.log("you lost!!")
  }
}


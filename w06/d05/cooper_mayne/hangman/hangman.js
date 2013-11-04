var HangmanGame = HangmanGame || {}

HangmanGame.Hangman = function() {
  this.wrong_guesses = []; // initialize wrong_guesses, always starts at 0
  this.current_guessed = [];
  this.guessLimit = 6; //set it here for easy changing later
  this.games_won = 0;
  this.games = 0;
  this.word_list =   

["acres", "adult", "advice", "arrangement", "attempt", "August", "Autumn", "border", "breeze", "brick", "calm", "canal", "Casey", "cast", "chose", "claws", "coach", "constantly", "contrast", "cookies", "customs", "damage", "Danny", "deeply", "depth", "discussion", "doll", "donkey", "Egypt", "Ellen", "essential", "exchange", "exist", "explanation", "facing", "film", "finest", "fireplace", "floating", "folks", "fort", "garage", "grabbed"]

  // set up these DOM pointers for later use....
  this.guessesElement = document.getElementById('guess_list');
  this.currentGuessedElement = document.getElementById('current_guessed');
  this.guessFormElement = document.getElementById('guess_form');
  this.resetElement = document.getElementById('reset');
  this.winLose = document.getElementById('win-lose');
  this.hangmanBodyParts = document.getElementById('hangmans-body').children;

  var that = this;

  this.guessFormElement.addEventListener('submit', function(e){
    var aGuess = this.children[0].value;
    that.checkGuess(aGuess);
    e.preventDefault();
  })
  this.resetElement.addEventListener('click', function(e) {
    that.games++;
    that.clearDisplay();
    that.setUpAGame();
    e.preventDefault();
  })

  this.setUpAGame();
}

HangmanGame.Hangman.prototype.setUpAGame = function() {
  //start a new round
  this.word = this.word_list[this.games].split("");
  this.wrong_guesses = [];
  this.current_guessed = [];
  this.displayGame();
}

HangmanGame.Hangman.prototype.checkGuess = function(letter) {
  //takes a guess checks it and direct to appropriate function
  this.word.indexOf(letter) == -1 ? this.wrongGuess(letter) : this.correctGuess(letter);
  this.displayGame();
}

HangmanGame.Hangman.prototype.correctGuess = function(letter) {
  //handle correct guess
  for (var i = 0; i < this.word.length; i++) {
    if (this.word[i] == letter) { this.current_guessed[i] = letter }  
  };
  if(this.hasWon()){
    this.winLose.textContent = 'You Won!';
  };
}

HangmanGame.Hangman.prototype.wrongGuess = function(letter) {
  //handle incorrect guess
  this.wrong_guesses.push(letter);
  if(this.hasLost()){
    this.winLose.textContent = 'You Lost!';
  };
}

HangmanGame.Hangman.prototype.hasWon = function() {
  //check if user has won this round and direct appropriately
  if (this.word.join() == this.current_guessed.join() ) {
    return true;
  } else {
    return false;
  }
}

HangmanGame.Hangman.prototype.hasLost = function() {
  //check if user has lost this round and direct appropriately
  if( this.wrong_guesses.length >= this.guessLimit ) {
    return true;
  } else {
    return false;
  }
}

HangmanGame.Hangman.prototype.clearDisplay = function() {
  this.currentGuessedElement.innerHTML = "";
  this.winLose.textContent = "";
  for (var i = 0; i < 6; i++) {
  this.hangmanBodyParts[i+2].attributes[0].value = 'make-invis';
  };
}

HangmanGame.Hangman.prototype.displayGame = function() {

  //this manages the current_word diplay

  var total_guesses = this.current_guessed.filter(function(n){return n}).length + this.wrong_guesses.length

  for (var i = 0; i < this.word.length; i++) {
    if (total_guesses == 0) {
      // sets up empty spans for the new rounds
      var letterSpan = document.createElement('span');
      letterSpan.className = 'letter';
      this.currentGuessedElement.appendChild(letterSpan);
    } else {
      // sets values for each new guess
      if (this.current_guessed[i]) {
        this.currentGuessedElement.children[i].textContent = this.current_guessed[i];
      }
    }
  };

  //deal with the wrong guess display
  this.guessesElement.textContent = this.wrong_guesses.join(', ');
  
  // deal with the guess form
  this.guessFormElement.children[0].value = "";

  // deal with the hangman's body picture...
  for (var i = 0; i < this.wrong_guesses.length; i++) {
    if(i<6){this.addBodyPart(i)};
  };
}

HangmanGame.Hangman.prototype.addBodyPart = function(i) {
  this.hangmanBodyParts[i+2].attributes[0].value = 'make-visible';
}

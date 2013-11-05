function Hangman(){
  this.wordList = [];
  this.progress = [];
  this.guesses = [];
  this.correctGuesses = 0;
  this.incorrectGuesses = 0;
  this.gameNumber = 0;
  this.secretWord = '';
  this.secretBackup = '';
}

Hangman.prototype.newWord = function() {
  this.secretWord = WDIBelt.random(this.wordList);
  this.secretBackup = this.secretWord;
};

Hangman.prototype.guessLetter = function(letter) {
  if (WDIBelt.contains(this.secretWord.split(''), letter) === true ) {
    // user guessed right

    while (WDIBelt.contains(this.secretWord.split(''), letter) === true ) {
      // this while loop accounts for repeated letters
      this.correctGuesses++;

      var letterIndex = this.secretWord.indexOf(letter);
      this.progress[letterIndex] = letter;

      var secretSub = this.secretWord.split('');
      secretSub[letterIndex] = 0;
      this.secretWord = secretSub.join('');
    }
    this.checkProgress();

  } else {
    // user guessed wrong
    this.guesses.push(letter);
    this.incorrectGuesses++;
    this.checkProgress();
  }
};

Hangman.prototype.startGame = function() {
  // starting a new game.. resetting game parameters
  this.gameNumber += 1;
  this.wordList = wordlist();
  this.newWord();
  this.guesses = [];
  this.correctGuesses = 0;
  this.incorrectGuesses = 0;
  this.progress = new Array(this.secretWord.length);
};

Hangman.prototype.checkProgress = function() {
  // checks the progress of the game
  if (this.correctGuesses === this.progress.length) {
    return true;
  } else {
    return false;
  }
};

Hangman.prototype.hint = function() {
  // provides a random answer
  // TODO this breaks the app...
  var hintArray = [];
  for (var i=0; i<this.secretWord.length; i++) {
    // create new array of non-zero'd letters
    if (this.secretWord[i] !== 0) {
      hintArray.push(this.secretWord[i]);
    }
  }
  var theHint = WDIBelt.random(hintArray);
  this.guessLetter(theHint);
};

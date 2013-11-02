function Hangman(){

  this.wordList = [];
  this.progress = [];
  this.guesses = [];
  this.correctGuesses = 0;
  this.incorrectGuesses = 0;
  this.secretWord;
}

Hangman.prototype.newWord = function() {
  this.secretWord = WDIBelt.random(this.wordList);
  console.log('new secret word - ' + this.secretWord)
}

Hangman.prototype.guessLetter = function(letter) {

  if (WDIBelt.contains(this.secretWord.split(''), letter) === true ) {
    // user guessed right
    this.progress[this.secretWord.indexOf(letter)] = letter;
    this.correctGuesses++;
    console.log('awesome!');
    this.checkProgress();

  } else {
    // user guessed wrong
    this.guesses.push(letter);
    console.log('you guessed wrong!');
    this.checkProgress();
  }
}

Hangman.prototype.startGame = function() {
  // starting a new game.. resetting game parameters
  this.newWord();
  this.correctGuesses = 0;
  this.incorrectGuesses = 0;
  this.progress = new Array(this.secretWord.length);

  console.log('game started!')
}

Hangman.prototype.checkProgress = function() {
  // checks the progress of the game
  if (this.correctGuesses === this.progress.length) {
    console.log('congratulations!!!!');
  } else {
    console.log('keep going!')
  }
}


//The game selects a random word from a word list and makes that the secret word
//The player guesses one letter at a time, trying to figure out what the word is
//If the player guesses correctly, any instances of that letter are revealed in the secret word
//If the player guesses incorrectly, they are penalized by taking away a guess
//If a player reveals all of the letters of the secret word, they win
//If a player makes 8 incorrect guesses before solving the secret word, they lose

Hangman = function() {
  //word list
  this.wordList = ["yes", "basic", "maybe", "hello"];
  //randomly select a word from the word list and make it the secret word
  this.createSecretWord();
  this.playGame();
}

Hangman.prototype.createSecretWord = function() {
  //debugger;
  var randomIndex = Math.floor(Math.random()*(this.wordList.length));
  this.secretWord = this.wordList[randomIndex];
}

Hangman.prototype.playGame = function() {
  this.incorrectGuesses = [];
  this.correctGuesses = [];
  this.keepPlaying = true;

  while (this.keepPlaying === true) {
    //debugger;
    this.askForInput();
    this.checkTheInput();
    this.setTheInput();
    //move to another function outside
    if (this.incorrectGuesses.length >= 8) {
      this.keepPlaying = false;
      alert('you lost');
    } else if (this.correctGuesses.length >= this.secretWord.length) {
      this.keepPlaying = false;
      alert('you won');
    }
    console.log("Current input: " + this.currentInput);
    console.log(this.secretWord);
    console.log(this.correctGuesses);
    console.log(this.incorrectGuesses);
  }
}

Hangman.prototype.askForInput = function() {
  this.currentInput = prompt('Enter a letter');
}

Hangman.prototype.checkTheInput = function() {
  //turn the secret word into array
  var secretWordArray = this.secretWord.split('');
  for (var i = 0; i < secretWordArray.length; i++) {
    //debugger;
    var letter = secretWordArray[i];
    if (this.currentInput === letter) {
      this.inputMatch = true;
      break;
    } else {
      this.inputMatch = false;
    }
  }
}

Hangman.prototype.setTheInput = function() {
  if (this.inputMatch) {
    var secretWordArray = this.secretWord.split('');
    for (var i = 0; i < secretWordArray.length; i++) {
    var letter = secretWordArray[i];
    if (this.currentInput === letter) {
    this.correctGuesses.push(this.currentInput)}
    }
  } else {
    this.incorrectGuesses.push(this.currentInput);
  }
}





// Build list of random words
// Select a word from the list and make it the secret
// Prompt the player for a guess
// Check if guess is right/wrong
// If right, show instances of letter in secret word
// If wrong, penalize the player by removing a guess
// A player gets 8 guesses at start of game
// If a player has 0 guesses left before finding the word, they lose


// Build a hangman object
function Hangman(wordBank) {
  this.wordBank = wordBank;

}

// Build a game object
function Game(secretWord){
  var self = this;
  this.secretWord = secretWord;
  this.guessesLeft = 8;
  this.guesses = [];
  this.promptGuess = function(){
    var currentGuess = prompt('Guess a letter');
    self.guesses.push(currentGuess);
    self.guessesLeft--;
    self.checkGuess(currentGuess);
  };
  this.checkGuess = function(currentGuess){
    var secretArray = self.secretWord.split('');
    self.each(secretArray, function(element, index){
      if (element === currentGuess){
        console.log('Right');
        console.log(element);
      } else {
        console.log('Wrong');
        self.guessesLeft--;
      }
    });
  };
  this.each = function(array, func) {
    for (var index = 0; index < array.length; index++) {
      var element = array[index];
      func.call(element, element, index);
    }
  };
}

var testing = new Game('smith');


// Build a hangman object
function Hangman(wordBank) {
  var self = this;
  this.wordBank = wordBank;
  this.gamesPlayed = 0;
  this.gamesWon = 0;
  this.init = function(){
    var currentGame = new Game('smith');
    currentGame.init();
    if (currentGame.won === true) {
      self.gamesWon++;
    }
    self.gamesPlayed++;
  };
}

// Build a game object
function Game(secretWord){
  var self = this;
  this.won = false;
  this.secretWord = secretWord;
  this.guessesLeft = 8;
  this.guesses = [];
  this.correctGuesses = [];
  this.promptGuess = function(){
    var currentGuess = prompt('Guess a letter');
    self.guesses.push(currentGuess);
    self.guessesLeft--;
    self.checkGuess(currentGuess);
  };
  this.checkGuess = function(currentGuess){
    var secretArray = self.secretWord.split('').sort();
    self.each(secretArray, function(element, index){
      if (element === currentGuess){
        console.log('Right');
        console.log(element);
        self.correctGuesses.push(element);
        if (self.correctGuesses.sort().join() === secretArray.join()){
          self.won = true;
        }
      } else {
        console.log('Wrong');
      }
    });
  };
  this.each = function(array, func) {
    for (var index = 0; index < array.length; index++) {
      var element = array[index];
      func.call(element, element, index);
    }
  };
  this.init = function(){
    while (self.guessesLeft > 0){
      if (self.won){
        alert("You win!");
        break;
      }
      self.promptGuess();
      if (self.guessesLeft === 0) {
        alert ('You lose!');
      }
    }
  };
}

var testing = new Hangman([]);
testing.init();

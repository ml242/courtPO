
// Build a hangman object
function Hangman(wordBank) {
  var self = this;
  this.wordBank = wordBank || ['smiths', 'dog']; // Can pass in custom wordbank or take default
  this.gamesPlayed = 0;
  this.gamesWon = 0;
  this.shuffleWordBank = function(wordBank) {
    wordBank.sort(function(){
      return 0.5 - Math.random();
    });
    return wordBank;
  };
  this.init = function(){
    var shuffledWordBank = self.shuffleWordBank(self.wordBank);
    self.currentGame = new Game(shuffledWordBank[0]);
    self.currentGame.init();
    if (self.currentGame.won === true) {
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
  this.secretArray = this.secretWord.split('');
  this.guessesLeft = 8;
  this.guesses = [];
  this.correctGuesses = [];
  this.submitGuess = function(wordInput){
    var currentGuess = wordInput.value;
    wordInput.value = '';
    self.guesses.push(currentGuess);
    self.guessesLeft--;
    self.checkGuess(currentGuess);
    self.checkGame();
  };
  this.checkGuess = function(currentGuess){
    var secretArray = self.secretArray.sort();
    self.each(secretArray, function(element, index){
      if (element === currentGuess){
        self.correctGuesses.push(element);
        if (self.correctGuesses.sort().join() === secretArray.join()){
          self.won = true;
        }
      }
    });
  };
  this.checkGame = function(){
    self.each(self.correctGuesses, function(element, index){
      var lettersToShow = document.getElementsByClassName('letter-' + element);
      self.each(lettersToShow, function(element, index){
        element.className = 'letter visible';
      });
    });
    if (self.guessesLeft > 0 && self.won){
      alert('You win!');
    } else if (self.guessesLeft === 0) {
      alert('You loose');
    }
  };
  this.each = function(array, func) {
    for (var index = 0; index < array.length; index++) {
      var element = array[index];
      func.call(element, element, index);
    }
  };
  this.init = function(){
    var secretWordNode = document.getElementById('secretWord');
    self.each(self.secretArray, function(element, index){
      var letter = document.createElement('span');
      letter.textContent = element;
      letter.className = 'letter hidden letter-' + element;
      secretWordNode.appendChild(letter);
    });
    var userGuessFormNode = document.getElementById('userGuessForm');
    var userGuessNode = document.getElementById('userGuess');
    userGuessFormNode.addEventListener('submit', function(e){
      e.preventDefault();
      self.submitGuess(userGuessNode);
    });
  };
}

var testing = new Hangman();
testing.init();

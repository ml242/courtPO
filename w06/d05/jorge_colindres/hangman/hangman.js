
// Build a hangman object
function Hangman(wordBank) {
  var self = this;
  this.wordBank = wordBank || ['smiths', 'dog']; // Can pass in custom wordbank or take default
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
  this.gameOver = false;
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
    self.showGuesses();
    if (self.guessesLeft > 0 && self.won){
      self.restartGame();
      alert('You win!');
    } else if (self.guessesLeft === 0) {
      self.revealAnswer();
      self.restartGame();
      alert('You loose');
    }
  };
  this.showGuesses = function(){
    var guessesListNode = document.getElementById('yourGuesses');
    if (self.guesses.length >= 0){
      // Delete all list items if they already exist so that when
      // we add them a few lines below, there won't be duplicates
      while (guessesListNode.firstChild){
        guessesListNode.removeChild(guessesListNode.firstChild);
      }
    }
    self.each(self.guesses, function(element, index){
      var listItem = document.createElement('li');
      listItem.textContent = element;
      guessesListNode.appendChild(listItem);
    });
  };
  this.giveUp = function(){
    self.guessesLeft = 0;
    self.revealAnswer();
    self.restartGame();
    alert('You gave up!');
  };
  this.revealAnswer = function(){
    self.each(self.secretArray, function(element, index){
      var lettersToShow = document.getElementsByClassName('letter-' + element);
      self.each(lettersToShow, function(element, index){
        element.className = 'letter visible';
      });
    });
  };
  this.each = function(array, func) {
    for (var index = 0; index < array.length; index++) {
      var element = array[index];
      func.call(element, element, index);
    }
  };
  this.restartGame = function(){
    self.gameOver = true;
    var restartGame = document.getElementById('restartGame');
    restartGame.className = 'yes-display';
    restartGame.addEventListener('click', function (){
      location.reload();
    });
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
    var giveUpButton = document.getElementById('giveUp');
    var play = document.getElementById('playAgain');
    userGuessFormNode.addEventListener('submit', function(e){
      e.preventDefault();
      self.submitGuess(userGuessNode);
    });
    giveUpButton.addEventListener('click', function (){
      self.giveUp();
    });
  };
}

var testing = new Hangman();
testing.init();

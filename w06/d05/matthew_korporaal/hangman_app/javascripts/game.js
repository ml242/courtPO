var Hangman = Hangman || {};

Hangman.Game = function() {
  //add start button listener
  this.firstGame = true;
  this.start = document.getElementById('start-button');
  this.addStartListeners(this.start);
  this.gamesWonNode = document.getElementsByClassName("games-won")[0];
  this.gamesLostNode = document.getElementsByClassName("games-lost")[0];
}

Hangman.Game.prototype.addStartListeners = function(start) {
  thisGame = this;
  start.addEventListener("click", function(e) {
    if (confirm("Would you like to start a new game? Confirm(Ok) or No(Cancel)")) {
      thisGame.startGame();
    }
  });
}

Hangman.Game.prototype.startGame = function() {
  //initialize data
  this.hmData = new Hangman.Data();
  //initialize words array, letters object w/ used/unused toggle
  this.secretWord = this.hmData.getSecretWord();
  this.createAnswer();

  pNodes = document.getElementsByTagName('p');
  this.guesses = [];
  for(var i=0; i<pNodes.length; i++) {
    var guessNode = pNodes[i];
    this.guesses[i] = new Hangman.Image(guessNode);
  }

  //initialize letters & add letter listeners
  aNodes = document.getElementsByTagName('a');
  this.images = [];
  for(var i=0; i<aNodes.length; i++) {
    var imageNode = aNodes[i];
    this.images[i] = new Hangman.Image(imageNode);
    // Add event click event to the letter
    if(this.firstGame == true) {
      this.addLetterListeners(imageNode, this.checkMatch);
    }
  }
  this.firstGame = false;
}

Hangman.Game.prototype.createAnswer = function() {
  ansDiv = document.getElementById("answer");
  // Clear previous answer
  ansDiv.innerHTML = ""
  for(var i=0;i<this.secretWord.length;i++){
    // make _ for each letter of secret word
    p = document.createElement("p");
    p.textContent = "_ ";
    ansDiv.appendChild(p);
  }
}

Hangman.Game.prototype.addLetterListeners = function(imageNode, checkMatch) {
  imageNode.addEventListener("click", function(e) {
    e.stopPropagation();
    checkMatch(e, imageNode);
  });
}

Hangman.Game.prototype.checkMatch = function(event, imageNode){
  event.stopPropagation();
  imageNode.className = "hidden";
  thisGame = this.hangman;
  hmData = thisGame.hmData;
  hmData.foundMatch = false;
  ansLetters = document.getElementById("answer").children;

  //check each letter of secret word for match
  for(var i=0;i<thisGame.secretWord.length;i++) {
    // correct guess, reveal letter on answer, check if game is over
    if (thisGame.secretWord[i].match(imageNode.textContent) != null) {
      ansLetters[i].textContent = imageNode.textContent + " ";
      hmData.lettersCorrect++;
      if(hmData.lettersCorrect === thisGame.secretWord.join("").length){
        hmData.gameOver = true;
        hmData.gamesWon++;
        alert("You won.")
      }
      hmData.foundMatch = true;
    }
  }
  // wrong guess, remove chance from board, inc badGuess, and check for end game
  if(!hmData.foundMatch) {
    badGuessNode = document.getElementsByTagName("p");
    badGuess = badGuessNode[hmData.badGuessCount];
    badGuess.className = "hidden"
    hmData.badGuessCount++;
    // if bad guesses used up, you lose
    if(hmData.badGuessCount == 10){
      hmData.gameOver = true;
      hmData.gamesLost++;
      alert("You Lost.")
    }
  }

  // end of game, hide leftover letters and update scoreboard
  if(hmData.gameOver){
    thisGame.hideLetters();
    thisGame.updateScoreBoard();
  }
}

Hangman.Game.prototype.hideLetters = function() {
  for(var i=0;i<this.images.length;i++){
    this.images[i].hide();
  }
}
Hangman.Game.prototype.updateScoreBoard = function() {
  this.gamesWonNode.innerHTML = hmData.gamesWon;
  this.gamesLostNode.innerHTML = hmData.gamesLost;

}
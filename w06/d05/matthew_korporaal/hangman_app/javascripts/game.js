var Hangman = Hangman || {};

Hangman.Game = function() {

  //add start button listener
  this.start = document.getElementById('start-button');
  this.addStartListeners(this.start);

  //initialize words array, letters object w/ used/unused toggle
  this.secretWord = this.getSecretWord();
  this.createAnswer();
  this.lettersCorrect = 0;
  //initialize letters & add letter listeners
  // imageNodes = document.getElementsByClassName('images');
  aNodes = document.getElementsByTagName('a');
  debugger;
  this.images = [];
  for(var i=0; i<aNodes.length; i++) {
    var imageNode = aNodes[i];
    this.images[i] = new Hangman.Image(imageNode);
    thisHangman = this;
    // Add event click event if image is a letter
    if (i < 26) {
      this.addLetterListeners(imageNode, this.secretWord, this.checkMatch)
    }
  }

  //load wins/losses
  this.gamesWon = 0;
  this.gamesWonNode = document.getElementsByClassName("games-won")[0];

  this.gamesLost = 0;
  this.gamesLostNode = document.getElementsByClassName("games-lost")[0];

  // this.soundBoard = new Slottoween.SoundBoard();


}

Hangman.Game.prototype.addStartListeners = function(start) {
  start.addEventListener("mouseup", function(e) {
    if (confirm("Would you like to start a new game? Confirm(Ok) or No(Cancel)")) {
      this.start();
    }
  });
}

Hangman.Game.prototype.getSecretWord = function() {
  var data = new Hangman.Data();
  return data.getSecretWord();
}
Hangman.Game.prototype.createAnswer = function() {
  ansDiv = document.getElementById("answer");
  for(var i=0;i<this.secretWord.length;i++){
    a = document.createElement("a");
    a.textContent = "_ ";
    ansDiv.appendChild(a);
  }
}
Hangman.Game.prototype.addLetterListeners = function(imageNode, secretWord, checkMatch) {
  imageNode.addEventListener("mouseup", function(e) {
      checkMatch(secretWord, imageNode);
  });
}
Hangman.Game.prototype.checkMatch = function(secretWord, imageNode){
  imageNode.className = "hidden"
  debugger
  ansLetters = document.getElementById("answer").children;
  this.hangman.match = false;
  //check each letter of secret word for match
  for(var i=0;i<secretWord.length;i++) {
    if (secretWord[i].match(imageNode.textContent) != null) {
      ansLetters[i].textContent = imageNode.textContent + " ";
      this.hangman.lettersCorrect++;
      if(this.hangman.lettersCorrect === secretWord.join("").length){
        this.hangman.gameOver = true;
        this.hangman.gamesWon++;

      }
      this.hangman.match = true;
    }

  }
  if(!this.hangman.match) {
    badGuess = document.getElementById("wrong-guess");
    if(badGuess.textContent === "9"){
      this.hangman.gameOver = true;
      this.hangman.gamesLost++;
    }
    badGuess.id = "";
    badGuess.textContent = "";
  }
  if(this.hangman.gameOver){
    this.hangman.updateScoreBoard()
  }
}
Hangman.Game.prototype.updateScoreBoard = function() {
  debugger
  this.gamesWonNode.innerHTML = this.gamesWon;
  this.gamesLostNode.innerHTML = this.gamesLost;
}
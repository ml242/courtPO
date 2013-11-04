var Game = function(){
  this.wordChoices = new Word;
  this.goodGuess = 0;
  this.badGuess = 0;
  this.word = null;
  var myGame = this;
  var startButton = document.getElementById("start");
  startButton.addEventListener("click",function(){myGame.start()})
  this.secretWord = document.getElementById("secret_word");
  var guess = document.getElementById("guessbox")
  guess.addEventListener("keyup",function(){myGame.guess()})
}

Game.prototype.start = function() {
  this.word = this.wordChoices.random()
  this.wordChar = this.word.split("")
  for (var i = 0; i<this.wordChar.length;i++){
    var element = this.wordChar[i];
    var blank = document.createElement('div');
    blank.className = "blank"
    blank.textContent = element
    this.secretWord.appendChild(blank)
  }
  this.badGuess = 0;
}


Game.prototype.guess = function(){


}

Game.prototype.check = function(){

}

Game.prototype.checkGuesses = function(){

}

Game.prototype.checkWinLose = function(){

}
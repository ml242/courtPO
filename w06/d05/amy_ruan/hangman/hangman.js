var Game = function(){
  this.wordChoices = new Word;
  this.badGuess = 0;
  this.word = null;
  this.wordChar = [];
  var myGame = this;
  var startButton = document.getElementById("start");
  startButton.addEventListener("click",function(){myGame.start()})

  this.secretWord = document.getElementById("secret_word");

  this.guessbox = document.getElementById("guessbox")
  this.guessbox.addEventListener("keyup",function(){myGame.guess()})
  this.gameStatus = false;

  this.badGuessBox = document.getElementById("bad_guess")

  this.badGuessCharBox = document.getElementById("bad_guess_char")
  this.badCharBox = [];
}

Game.prototype.start = function() {
  this.gameStatus = true;
  this.badGuessCharBox.textContent = null;
  this.word = this.wordChoices.random()
  this.wordChar = this.word.split("")
  for (var i = 0; i<this.wordChar.length;i++){
    var element = this.wordChar[i];
    var blank = document.createElement('div');
    blank.className = "blank"
    blank.textContent = element
    blank.style.color = "transparent"
    this.secretWord.appendChild(blank)
  }
  this.badGuess = 0;
}

Game.prototype.guess = function(){
  if (this.gameStatus){
    var inputElement = this.guessbox.value;
    var check = false;
    var blanks = document.getElementsByClassName('blank')
      for(var i = 0; i<blanks.length; i++){
        var secretChar = blanks[i].textContent
        if (inputElement == secretChar){
          blanks[i].style.color = "black"
          this.guessbox.value = null;
          check = true
        }
      }
      if (check){
        this.checkGoodGuess();
      } else{
        this.recordBadGuess();
      }
  }
  else
  {
    alert("Game has not started")
    this.guessbox.value = null;
  }
}

Game.prototype.checkGoodGuess = function(){
var blanks = document.getElementsByClassName('blank')
for(var i = 0; i<blanks.length; i++){
        var secretChar = blanks[i].textContent
        if (inputElement == secretChar){
          blanks[i].style.color = "black"
          this.guessbox.value = null;
          check = true
        }
  }
}

Game.prototype.recordBadGuess = function(){
  this.badGuess++
  this.badGuessBox.textContent = "Bad Guess:" + this.badGuess
  this.badCharBox.push(this.guessbox.value)
  this.badGuessCharBox.textContent = this.badCharBox;
  this.guessbox.value = null;
}



// Game.prototype.checkGuesses = function(){

// }

// Game.prototype.checkWinLose = function(){

// }
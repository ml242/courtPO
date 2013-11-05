var Game = function(){
  this.wordChoices = new Word;
  this.badGuess = 0;
  this.word = null;
  this.wordChar = [];
  this.currentTime = null;
  this.blanks = document.getElementsByClassName('blank')
  var myGame = this;
  var startButton = document.getElementById("start");
  startButton.addEventListener("click",function(){myGame.start()})

  var giveupButton = document.getElementById("give-up");
  giveupButton.addEventListener("click",function(){myGame.giveup()})

  this.secretWord = document.getElementById("secret_word");

  this.guessbox = document.getElementById("guessbox")
  this.guessbox.addEventListener("keyup",function(){myGame.guess()})
  this.gameStatus = false;

  this.badGuessBox = document.getElementById("bad_guess")

  this.badGuessCharBox = document.getElementById("bad_guess_char")
  this.badCharBox = [];

  this.timer = document.getElementById("time")
}

Game.prototype.start = function() {
  this.currentTime = new Date
  this.deleteBlanks()
  this.gameStatus = true;
  this.badGuess = 0;
  this.badGuessBox.textContent = "Bad Guess #: " + this.badGuess
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

}

Game.prototype.guess = function(){
  if (this.gameStatus){
    var inputElement = this.guessbox.value;
    var check = false;
      for(var i = 0; i<this.blanks.length; i++){
        var secretChar = this.blanks[i].textContent
        if (inputElement == secretChar){
          this.blanks[i].style.color = "black"
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
  var check = false;

  for(var i = 0; i<this.blanks.length; i++){
          var colorElement = this.blanks[i].style.color
          if (colorElement === "transparent"){
            check = true
          }
    }
    if(!check){
      alert("You win!")
      var winTime = new Date
// time is in milliseconds
      var totalTime = (winTime - this.currentTime)/60000
      var totalRoundedTime = Math.round(totalTime*100)/100
      this.timer.textContent = "You took " + totalRoundedTime + " mins to win the game."
     }
}

Game.prototype.recordBadGuess = function(){
  var check = this.badGuess++
  this.badGuessBox.textContent = "Bad Guess #: " + this.badGuess
  this.badCharBox.push(this.guessbox.value)
  this.badGuessCharBox.textContent = this.badCharBox;
  if(check < 7){
    this.guessbox.value = null;
  }
  else{
    alert("You lost!")
  }
}

Game.prototype.deleteBlanks = function(){
  var i = 0;
  while(this.blanks.length > 0){
    var element = this.blanks[i];
    element.parentElement.removeChild(element);
  }
}

Game.prototype.giveup = function(){
  for(var i = 0; i < this.blanks.length; i++){
    element = this.blanks[i]
    element.style.color = "#FF4400"
    this.badGuess = 8;
    this.badGuessBox.textContent = "Bad Guess #: " + this.badGuess
  }

}
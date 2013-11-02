  function Hangman() {
    this.wordList = ["kitty", "animal", "friend", "window", "booty", "pirate", "love", "smoothie", "wine", "hangover"];
    this.man = ["head", "body", "left-arm", "right-arm", "right-leg", "left-leg", "right-hand", "left-hand"];
    this.numGuesses = 0;
  }

  Hangman.prototype.selectWord = function(){
    var num = Math.floor(Math.random() * 10);
    this.secretWord = this.wordList[num];
    this.secretWordArray = this.secretWord.split("");
    var answerDiv = document.getElementById("answer");
    for(i = 0; i < this.secretWord.length; i++) {
      var span = document.createElement("span");
      span.innerHTML = "_ ";
      span.id = this.secretWord + "-" + i;
      answerDiv.appendChild(span);
    }
  // var wordDisp = document.getElementById("word-display");
};

Hangman.prototype.takeGuess = function(letter) {
  if(this.numGuesses < 7) {
    if(this.secretWord.indexOf(letter) == -1){
      var bodyPart = document.getElementById(this.man[this.numGuesses]);
      bodyPart.className = "showing";
      this.numGuesses += 1;
    }
    else {
      for(i = 0; i < this.secretWord.length; i++) {
        if(this.secretWord[i] == letter){
          var span = document.getElementById(this.secretWord + "-" + i);
          span.innerHTML = this.secretWord[i];
          console.log(letter);
        }
      }
    }
  }
  else {
    var answerDiv = document.getElementById("answer");
    var leftHand = document.getElementById("left-hand");
    leftHand.className = "showing";
    answerDiv.innerHTML = "The word was: " + this.secretWord + ". You lose!";

  }
};



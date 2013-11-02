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
    var wordDiv = document.createElement("div");
    wordDiv.id = "word-div";
    for(i = 0; i < this.secretWord.length; i++) {
      var span = document.createElement("span");
      span.innerHTML = "_ ";
      span.id = this.secretWord + "-" + i;
      wordDiv.appendChild(span);
    }
      answerDiv.appendChild(wordDiv);
  // var wordDisp = document.getElementById("word-display");
};

Hangman.prototype.takeGuess = function(letter) {
  var answerDiv = document.getElementById("answer");
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
          span.className = "correct";
          var allCorrect = document.getElementsByClassName("correct");
          if(allCorrect.length == this.secretWord.length) {
            alert("you won!");
            this.won();
          }
        }
      }
    }
  }
  else {
    var leftHand = document.getElementById("left-hand");
    leftHand.className = "showing";
    answerDiv.innerHTML = "The word was: " + this.secretWord + ". You lose!";

  }
};

Hangman.prototype.wordGuess = function(word) {
  if(this.numGuesses < 7) {
    if(this.secretWord == word) {
      alert("you won!");
      this.won();
    }
    else{
      var bodyPart = document.getElementById(this.man[this.numGuesses]);
      bodyPart.className = "showing";
      this.numGuesses += 1;
    }
  }
};

Hangman.prototype.won = function() {
  var wordDiv = document.getElementById("word-div");
  var answerDiv = document.getElementById("answer");
  answerDiv.removeChild(wordDiv);
  this.selectWord();
  this.numGuesses = 0;
  var showing = document.getElementsByClassName("showing");
  var lngth = showing.length;
  for(i = 0; i < lngth; i++) {
    showing[0].className = "hidden";
  }
  var lettersGuessed = document.getElementById("letters-guessed");
  lettersGuessed.innerHTML = "Letters Guessed: <br>";
};


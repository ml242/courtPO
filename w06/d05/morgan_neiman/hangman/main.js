  var game = new Hangman();
  game.selectWord();

  var button = document.getElementById("button");
  button.addEventListener("click", function() {
    var input = document.getElementById("input");
    var guess = input.value;
    if(guess.length == 1) {
      game.takeGuess(guess);
      var guessed = document.getElementById("letters-guessed");
      guessed.innerHTML += guess + ", ";
    }
    else {
      alert("only one letter at a time");
    }
  }
  );

  var button2 = document.getElementById("button2");
  button2.addEventListener("click", function() {
    var wordInput = document.getElementById("word-input");
    var wordGuess = wordInput.value;
    game.wordGuess(wordGuess);
  });

  var giveUp = document.getElementById("give-up");
  giveUp.addEventListener("click", function() {
    var answerDiv = document.getElementById("answer");
    answerDiv.innerHTML = "<div id='word-div'>The word was: " + game.secretWord + ". You lose!</div>";
  });

  var reset = document.getElementById("reset");
  reset.addEventListener("click", function() {
    game.won();
  });
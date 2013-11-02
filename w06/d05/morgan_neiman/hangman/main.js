  var game = new Hangman();
  game.selectWord();

  var button = document.getElementById("button");
  button.addEventListener("click", function() {
    var input = document.getElementById("input");
    var guess = input.value;
    if(guess.length == 1) {
      game.takeGuess(guess);
    }
    else {
      alert("only one letter at a time");
    }
  }
  );
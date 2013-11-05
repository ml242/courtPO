// test each piece of code in chrome starting from the top here

// this is the game
// everything will occur within the game
Game = function() {

  function chooseWord() {
    // this may work, it may need WDIBelt
    var secretWord = words[Math.floor(Math.random() * words.length)];
    var secretWordArray = secretWord.toUpperCase().split("");
  }



  // this.incorrect = new Array;

  var incorrectGuesses = 0;
  var correctGuesses = 0;


  function checkGuess(e) {
    // this line gets the letter from the listener and assigns it to a variable
    var guessLetter = String.fromCharCode(event.keyCode).toUpperCase();
    this.progress = new Array(secretWord.length); //this will be secretWord or secretWordArray
    // secretWordArray contains? letter (use WDIBelt)
    if (WDIBelt.contains(secretWordArray, guessLetter)) {
      // reveal letters in word that === letter
      letterPosition = secretWordArray.indexOf(guessLetter);
      progress[letterPosition] = secretWordArray[letterPosition];
      // reveal a letter
      progress.revealLetters();
      correctGuesses++;
      if (correctGuesses === secretWordArray.length) {  //this uses correctGuesses === secretWordArray.length();
        alert("You Win");
      // how to quit out of game? or use notice box to play again????
      }
    } else {
      incorrectGuess++;
      // if time, make a pool of incorrectly guessed letters
      if (incorrectGuess === 8) {
        alert("You Lose");
        // how to quit out of game? or use notice box to play again????
      // } else {
      //   incorrect.push(guessLetter);
      //   incorrectLetters.textContent = incorrect;
      }
    }
  }

  function revealLetters() {
    // use what harrison wrote on the board to help create this method
    var textContent = "";
    for (var i = 0; i < progress.length; i++) {
      if (progress[i] === undefined) {
        reveal.textContent += "_ ";
      } else {
        reveal.textContent += Game.progress[i];
      }
    }


  }

  // creates a listener for the letters, sends to checkGuess
Game.chooseWord();
document.body.addEventListener("submit", checkGuess);


}





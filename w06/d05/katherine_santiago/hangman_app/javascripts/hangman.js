function Hangman() {

  var wordList = ["blue", "red", "brown", "purple"];


    // chooses random word, triggered by clicking on the start game button
  Hangman.prototype.getWord = function() {
    // pick a secretWord from the list by using wdi_belt.js ramdom function
    this.secretWord = WDIBelt.random(wordList);
    // splits the array, so that later, I can check if the guessed letter is equal to any element in the array
    this.secretWordArray = this.secretWord.split('');
    // creates a new array with the same length as the secretWordArray, with undefined (empty) elements
    this.progress = new Array(this.secretWordArray.length);
    // keep track of number of wrong guesses
    this.numWrongGuesses = 0;
    this.allGuesses = [];
    console.log("Started!")
    console.log(this.secretWord);
  }
}

  Hangman.prototype.checkGuess = function() {
    var guess = document.getElementsByName('letter-input')[0].value;
    var self = this;
    this.allGuesses.push(guess);
    if (WDIBelt.contains(this.secretWordArray, guess)) {
      var guessIndex = this.secretWordArray.indexOf(guess);
      console.log(guess + ' with index of ' + guessIndex + ' is in there');
      self.progress[guessIndex] = guess;
      console.log(self.progress);
    } else {
      alert('try again');
    }
  }

  Hangman.prototype.listAllGuesses = function() {
    var self = this;
    this.allGuesses = self.progress
  }

  Hangman.prototype.trackWrongGuess = function() {

  }


  // it should then display a certain number of empty boxes(divs)

  // user types in a letter
  // checks if it is === to each of the values of the secretWord array
  // if it is === that value should be revealed
  // else numWrongGuesses++
    // if numWrongGuesses === 8
    // then Game over!

  // check if you've won
  // if all of the arrays in the word have been revealed then && numWrongGuesses < 8, then "yay you won!"



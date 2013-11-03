// allows me to call .randomElement() on an array
Array.prototype.randomElement = function () {
    return this[Math.floor(Math.random() * this.length)];
};

// allows me to iterate through an array, running any chosen function on
// each element in said array.
Array.prototype.each = function(fn) {
  for (var index = 0; index < this.length; index++) {
      var el = this[index];
      fn(el);
    }
}
// example of a call of the function above
// potentialWords.each(function(word) { console.log(word); })

// this function will take the User's guess and evaluate it.
// I need to iterate through the secretWordLettersArray,
// checking if the letter at each index is equal to the user's guess.
// If it is, I need to populate the corresponding index value
// in the renderGuessesArray, and then render it
evaluateGuess = function(guess, comparisonArray) {
  comparisonArray.each(function(letter) {
  debugger
    if (letter == guess) {
      alert("You guessed " + guess + ". It matched the secret word at index value:")
      debugger;
    }
    else {
      alert("LETTER DIDN'T MATCH. GAME OVER");
      gameOn = false;

    }
  });
}
// NOTE: this function will eventually (once it's finished) be housed within the game function called

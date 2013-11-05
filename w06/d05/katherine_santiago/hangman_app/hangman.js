function Hangman() {
  this.wordList = [galway, jetton, clause, yonnie, bonnie, velout, easley, bethel, abrazo, datcha];

  this.secretWord = "";
  this.numWrongGuesses = 8;

// needs something to start the game
Hangman.prototype.start = function() {
  console.log("Started!")
  this.wordList = ;


WDIBelt.random = function(array) {
  var randIndex = Math.floor(array.length * Math.random())
  return array[randIndex];
}

WDIBelt.contains = function(array, item) {
  var result = false;
  this.each(array, function(){
    if (this.toString() === item) {
      result = true;
    }
  });
  return result;
}
}
// when it starts the game, it should also select from the wordList randomly
// when word is selected, it should split the word by character
// when word is split, it should count the number in the array
// it should then display a certain number of empty boxes(divs)
//

// user types in a letter
// checks if it is === to each of the values of the secretWord array
// if it is === that value should be revealed
// else numWrongGuesses++
  // if numWrongGuesses === 8
  // then Game over!

// check if you've won
// if all of the arrays in the word have been revealed then && numWrongGuesses < 8, then "yay you won!"


}

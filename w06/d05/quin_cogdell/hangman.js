var wordList = [
"pizza",
"elephant",
"cowboy",
"pie"
];

var hiddenWord = document.getElementById("hidden-word");
var userWord = document.getElementById("user-input");



// going to give 10 incorrect guesses
var guessCount = 0;

// select the word
// starting out with a simple word that doesn't have any repeat letters
var word = wordList[3];

// know how long the word is
var wordSize = word.length


// array to track user input
var userLettersArray = [];
var badLettters = [];

// Call userLetters function
// without having an empty populated array the array will have undefined indexes with checkLetters inserts correct guesses
userLetters()

// create array that WILL BE used to track correct user guesses
function userLetters() {
  for (var i = 0; i < wordSize; i++) {
    userLettersArray.push("_");
  }
  hiddenWord.textContent = userLettersArray.join(" ");
  return userLettersArray;
}

// user inputs text

function userInput(l) {
  tempArray = userLettersArray;
  checkLetter(l);
  if (userLettersArray.join("") === tempArray.join("")) {
    alert(userLettersArray.join(""))
    } else {
      badLettters.push(l);
      return badLettters;
    }
}

// check to see if that letter is in the word
function checkLetter(l) {
  debugger
  for (var i = 0; i < wordSize; i++) {
    if (l === word[i]) {
      userLettersArray[i] = l;
    }
  }
  return userLettersArray;
}


// if yes, display those characters
// if no, add to list of already selected letters


// continue until either max tries are hit OR
// user guesses all the correct letters







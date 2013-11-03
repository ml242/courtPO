var HangMan = function() {
// institutes a new game
  console.log("Welcome to Hangman!");

  var myHangMan = this;
  var count = 0;
  var myWord;
  var userGuess;
  var eVal;
  var matt = "matt";
  // resets the game when finished
  // gets the word from the library
  myHangMan.getWord();
  // get target word for game
  myHangMan.guess();
  // evaluates the route of the guess
  myHangMan.eVal();
  // initializes the get answer mechanism if you decide to quit
  // checks each place
  // ends game when over
  // control body mechanism

};

HangMan.prototype.library = [
"beer",
"fishing",
"alcohol",
"school",
"dictionary",
"greetings",
"soccer",
"banality",
"frequency,"
];

// HangMan.prototype.count = function() {
//   debugger;

// };

// this.userGuess
HangMan.prototype.guess = function() {
  userGuess = prompt("Guess a letter.");
};

HangMan.prototype.getWord = function() {
  this.curIndex = Math.floor(Math.random()*10);
  myWord = this.library[this.curIndex];
};


HangMan.prototype.eVal = function() {
  // array here
  eVal = myWord.indexOf(userGuess);
    if ((eVal === false) || (eVal < 0)) {
      debugger;
      this.count++;
    } else {
      console.log(userGuess, eVal);
    }
  // if letter is present reveal it and its place
  // else add plus one to the scoreboard
};

// Get random word
// turn over tile when the guess matches

// HangMan.prototype.myWord = function() {
//   this.curIndex = Math.floor(Math.random()*10);
//   var myWord = this.library[this.curIndex];
// };





// ask for guesses

// route incorrect guess to scoreboard
// route correct guess to show tile

// Control the body apparatus getting info from the library and scoreboard

// turn over a body part to let user name guesses are getting exhausted.
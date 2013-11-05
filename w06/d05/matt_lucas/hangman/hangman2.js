function HangMan() {
// institutes a new game
  console.log("Welcome to Hangman!");

  var myHangMan = this;
  counter = 0;
  var myWord;
  var userGuess = [];
  var eValuation;
  myHangMan.getWord();
  // get target word for game
  // resets the game when finished
  // gets the word from the library
  while (counter < 7 ) {
  myHangMan.guess();
  // evaluates the route of the guess
  // myHangMan.checkLetter("userGuess");
  myHangMan.checkLetter();
  // initializes the get answer mechanism if you decide to quit
  // checks each place
  // ends game when over
  // control body mechanism
  }
}

HangMan.prototype.library = [
"beer",
"fishing",
"alcohol",
"school",
"dictionary",
"greetings",
"soccer",
"banality",
"frequency",
"spurts",
"conditional"
];

// this.userGuess
HangMan.prototype.guess = function() {
  userGuess.push(prompt("Guess a letter."));
};

// gets a word
HangMan.prototype.getWord = function() {
  this.curIndex = Math.floor(Math.random()*10);
  this.myWord = this.library[this.curIndex];
};

// checks the word
// supposed to increment the counter
HangMan.prototype.checkLetter = function() {
  // array here
  this.eValuation = this.myWord.indexOf(userGuess);
    if (this.eValuation < 0) {
      console.log("fail check", this.myWord, userGuess, this.eValuation);
      counter++;
    } else {
      alert("pass check");
      console.log(this.myWord, userGuess, this.eValuation);
    }
  // if letter is present reveal it and its place
  // else add plus one to the scoreboard
};

// ask for guesses

// route incorrect guess to scoreboard
// route correct guess to show tile

// Control the body apparatus getting info from the library and scoreboard

// turn over a body part to let user name guesses are getting exhausted.
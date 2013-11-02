potentialWords = ["able", "achieve", "acoustics", "action", "activity", "aftermath", "afternoon", "afterthought", "apparel", "appliance", "beginner", "believe", "bomb", "border", "boundary", "breakfast", "cabbage", "cable", "calculator", "calendar", "caption", "carpenter", "cemetery", "channel", "circle", "creator", "creature", "education", "faucet", "feather", "friction", "fruit", "fuel", "galley", "guide", "guitar", "health", "heart", "idea", "kitten", "laborer", "language", "lawyer", "linen", "locket", "lumber", "magic", "minister", "mitten", "money", "mountain", "music", "partner", "passenger", "pickle", "picture", "plantation", "plastic", "pleasure", "pocket", "police", "pollution", "railway", "recess", "reward", "route", "scene", "scent", "squirrel", "stranger", "suit", "sweater", "temper", "territory", "texture", "thread", "treatment", "veil", "vein", "volcano", "wealth", "weather", "wilderness", "wren", "wrist", "writer"];
// logic for building the game and handling events
// HangMan = function() {
//   // all of my potential words
//   debugger;
// }

// function that fires when a user clicks 'Play' or 'Play Again'
Game = function() {
  debugger;

  // grabs a random element from the potentialWords array

  var secretWord = potentialWords.randomElement();

  // whenever a new game is created, an empty guesses array has to be setup
  var guesses = [];

  // establishes how many letter divs I'll create
  var letterDivsNum = secretWord.length;

  // splits the random word into its individual letters, and throws them into an array.
  secretWordLettersArray = secretWord.split('');
}

// function that handles the event of a user choosing a letter
evaluateLetterChoice = function() {

// this function needs to take the user's input and compare it to
// every letter in the secretWord.

}

// array of words for the program to choose from
var potentialWords = ["able", "achieve", "acoustics", "action", "activity", "aftermath", "afternoon", "afterthought", "apparel", "appliance", "beginner", "believe", "bomb", "border", "boundary", "breakfast", "cabbage", "cable", "calculator", "calendar", "caption", "carpenter", "cemetery", "channel", "circle", "creator", "creature", "education", "faucet", "feather", "friction", "fruit", "fuel", "galley", "guide", "guitar", "health", "heart", "idea", "kitten", "laborer", "language", "lawyer", "linen", "locket", "lumber", "magic", "minister", "mitten", "money", "mountain", "music", "partner", "passenger", "pickle", "picture", "plantation", "plastic", "pleasure", "pocket", "police", "pollution", "railway", "recess", "reward", "route", "scene", "scent", "squirrel", "stranger", "suit", "sweater", "temper", "territory", "texture", "thread", "treatment", "veil", "vein", "volcano", "wealth", "weather", "wilderness", "wren", "wrist", "writer"];

// whenever a new game is created, an empty guesses inocrrectGuessesArray is created.
var incorrectGuesses = [];

// will be used within the evaluation function
var goodGuess

// setting an empty erray so the evaluateGuesses() function,
// which makes reference to this variable before it's set to a value in the Game() function
var secretWordLettersArray

// function that fires when a user clicks 'Play' or 'Play Again'
Game = function() {
  // hides the newGameButton when a game is instantiated
  newGameButton.style.display = 'none'

  // brings the 'guess' input field and submitGuess button into view.
  inputFieldAndSubmit.style.display = 'block'

  // sets game status. While gameOn = true, the game will continue to take user inputs
  gameOn = true;

  // grabs a random word from the potentialWords array. This is
  // the word the user has to uncover
  var secretWord = potentialWords.randomElement();
  // establishes how many letter divs I'll create
  var letterDivsNum = secretWord.length;

  // splits the random word into its individual letters, and throws them into an array.
  var secretWordLettersArray = secretWord.split('');

  // create an array with a length that corresponds to the length
  // of the secret word. This allows me, with the checkLetter function,
  // to pop correct letters into the array where appropriate, based on index value.
  var renderArray = new Array(secretWord.length)

  var guessInputField = document.getElementById("guess-input-field")
  // var userGuess = guessInputField.value

  guess = prompt("What's your first guess?");


  var verdict = "You lose!"

  while (incorrectGuesses.length < 6 && gameOn == true ) {
    debugger;
    // checks if the the user's guess matches any elements within the secretWordLettersArray
    goodGuess = (secretWordLettersArray.indexOf(guess) > -1)
    if (goodGuess == false) {
      incorrectGuesses.push(guess);
      guess = prompt("YOU GUESSED WRONG:  " + renderArray.join(' , ') + "  GUESS AGAIN");
      continue;
    }
    // checks each letter of the secret word for equivelency with the user's guess
    else if (renderArray.join(' ')==secretWordLettersArray.join(' ')) {
      gameOn = false;
      verdict = "You win!";
      break;
      }
    else {
      for (var index = 0; index < secretWordLettersArray.length; index++) {
        if (secretWordLettersArray[index] == guess) {
          renderArray[index] = guess;
          guess = prompt('You guessed CORRECTLY:  ' + renderArray.join(' , ') + '  Guess again')
        }
      }
    }
  }

  alert('the game is over. ' + verdict );
  inputFieldAndSubmit.style.display='none';
  newGameButton.textContent='Play Again';
  newGameButton.style.display='block';
};

// function that handles the evaluation of
  // I want to iterate over each eltter in the secretWordLettersArray, checking
  // for equality between A) the user's letterGuess.
      //if there is an equality,
          //I want to update the renderGuessesArray-which houses undefined values--at the proper index values.

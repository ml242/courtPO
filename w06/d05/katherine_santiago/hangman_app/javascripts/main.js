var game = new Hangman();

(function() {
  var startButton = document.getElementById('start');
  var submitButton = document.getElementById('submit-button');
  var word = document.getElementById('word').textContent;
  var allGuesses = document.getElementById('all-guesses').textContent;
  startButton.addEventListener("click", function() {
    game.getWord();
  });
  submitButton.addEventListener("click", function() {
    game.checkGuess();
  });
  submitButton.addEventListener("click", function() {
    game.listAllGuesses();
  });

})();

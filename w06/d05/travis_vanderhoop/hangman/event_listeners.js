var newGameButton = document.getElementById("new-game-button");
    newGameButton.addEventListener("click", Game);

var inputFieldAndSubmit = document.getElementById("guess-input");

var submitButton = document.getElementById("submit-button")
    submitButton.addEventListener("click", evaluateGuess);

var secretWordWithBlanks = document.getElementById('render-array'),
    renderedIncorrectGuesses = document.getElementById('incorrect-guesses')


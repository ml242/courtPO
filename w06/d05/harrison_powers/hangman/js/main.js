var hangman = new Hangman();

function startGame() {
  // initialize figure div
  hangman.startGame();

  // initialize answer div
  // eventually start timer
}

function hint() {
  hangman.hint();
  // auto-fill in a letter and reload the answer
}

function reset() {
  hangman.startGame();
  // reset
}


(function setUpMenu(){
  var menu = document.getElementsByClassName('menu');

  var startGame = document.createElement('div');
  startGame.className = 'menu-item';
  startGame.id = 'menu-start'
  startGame.textContent = 'Start Game!';
  startGame.addEventListener('click', function() {
    startGame()
  });
  menu.appendChild(startGame);

  var hint = document.createElement('div');
  hint.className = 'menu-item';
  hint.id = 'menu-hint';
  hint.textContent = 'Gimme a hint!';
  hint.addEventListener('click', function() {
    hint()
  });
  menu.appendChild(hint);

  var reset = document.createElement('div');
  reset.className = 'menu-item';
  reset.id = 'menu-reset';
  reset.textContent = 'Reset the Game';
  reset.addEventListener('')

})();

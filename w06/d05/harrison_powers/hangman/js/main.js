var hangman = new Hangman();
// var stickFigure = new StickFigure();

function startTheGame() {
  // Add the hint button
  if (document.getElementById('menu-hint') === null) {
    var menu = document.getElementsByClassName('menu')[0];
    var hint = document.createElement('div');
    hint.className = 'menu-item';
    hint.id = 'menu-hint';
    hint.textContent = 'Gimme a hint';
    menu.appendChild(hint);
    hint.addEventListener('click', function() {
      getHint();
      menu.removeChild(hint);
      setTimeout(function(){
        loadProgress();
      }, 10);
    });
  }

  // initialize figure div
  var figure = document.getElementsByClassName('figure')[0];
  figure.textContent = '';

  hangman.startGame();

  // initialize answer div
  var answer = document.getElementsByClassName('answer')[0];
  answer.textContent = '';
  for (i=0; i < hangman.secretWord.length; i++) {
    answer.textContent += '_ ';
  }

  loadProgress();

  // initialize input
  if (document.getElementById('letter-input') === null) {
    var letterInput = document.createElement('input');
    letterInput.id = 'letter-input';
    // letterInput.placeholder = '_';
    var lettersDiv = document.getElementsByClassName('letters')[0];
    lettersDiv.appendChild(letterInput);

    letterInput.addEventListener('keyup', function(){
      var theLetter = letterInput.value;
      hangman.guessLetter(theLetter);
      letterInput.value = '';
      loadProgress();
    });
  }

  // focus on the input
  var inputToFocus = document.getElementById('letter-input');
  inputToFocus.focus();

  // scroll to the bottom of the page
  setTimeout(function(){
    scrollTo(0,200);
  },10);

  // set the game number
  var gameNumber = hangman.gameNumber;

  // start timer

  var timeLeft = 60;
  var timerDiv = document.getElementsByClassName('timer')[0];
  timerDiv.textContent = timeLeft;
  timerDiv.style.color = "#000"
  var deadManTimeLeft = function() {
    timerDiv.textContent = timeLeft;
    if (timeLeft < 10) {
      timerDiv.style.color = '#af111c';
    }
  }

  var deadManInterval = setInterval(function() {
    if (hangman.gameNumber !== gameNumber) {
      clearInterval(deadManInterval);
    } else if (timeLeft > 0) {
      deadManTimeLeft();
    } else {
      timerDiv.textContent = 'Time\'s up!'
      clearInterval(deadManInterval);
    }
    timeLeft --;
  }, 1000);
}

function loadProgress() {
  var answer = document.getElementsByClassName('answer')[0];
  answer.textContent = '';
  for (i=0; i < hangman.progress.length; i++) {
    if (hangman.progress[i] === undefined) {
      answer.textContent += '_ ';
    } else {
      answer.textContent += hangman.progress[i];
      answer.textContent += ' ';
    }
  }

  var figureDiv = document.getElementsByClassName('figure')[0];
  var badGuesses = hangman.incorrectGuesses;
  if (badGuesses < 7) {
    figureDiv.textContent = 8 - badGuesses;
    figureDiv.textContent += ' guesses left!';
  } else if (badGuesses === 7) {
    figureDiv.textContent = '1 guess left!';
  } else {
    figureDiv.textContent = 'Dead man hanging!';
    var letterInput = document.getElementById('letter-input');
    letterInput.parentNode.removeChild(letterInput);
    var menuHint = document.getElementById('menu-hint');
    menuHint.parentNode.removeChild(menuHint);
    hangman.gameNumber ++;
  }

  var guessesDiv = document.getElementsByClassName('guesses')[0];
  guessesDiv.innerHTML = '&nbsp;';
  for (i=0; i < hangman.guesses.length; i++) {
    guessesDiv.textContent += hangman.guesses[i];
  }

  if (hangman.checkProgress() === true) {
    var letterInput = document.getElementById('letter-input');
    letterInput.parentNode.removeChild(letterInput);
    var menuHint = document.getElementById('menu-hint');
    menuHint.parentNode.removeChild(menuHint);
    var figureDiv = document.getElementsByClassName('figure')[0];
    figureDiv.textContent = 'Blondie saves Tuco.';
    hangman.gameNumber ++;
  }
}

function getHint() {
  hangman.hint();
  var letterInput = document.getElementById('letter-input');
  letterInput.focus();
}


(function setUpGame(){
  var menu = document.getElementsByClassName('menu')[0];

  var startGame = document.createElement('div');
  startGame.className = 'menu-item';
  startGame.id = 'menu-start';
  startGame.textContent = 'New Game';
  menu.appendChild(startGame);
  startGame.addEventListener('click', function() {
    startTheGame();
  });

})();

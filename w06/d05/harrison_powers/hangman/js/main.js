var hangman = new Hangman();
// var stickFigure = new StickFigure();

function startTheGame() {

  var menu = document.getElementsByClassName('menu')[0];
  // remove the start game button
  if (menu.children[0]) {
    var startButton = menu.children[0];
    startButton.parentNode.removeChild(startButton);
  }

  // Add the hint button
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



  // initialize figure div
  var figure = document.getElementsByClassName('figure')[0];
  figure.textContent = '';

  hangman.startGame();

  loadProgress();

  // initialize input
  var letterInput = document.createElement('input');
  letterInput.id = 'letter-input';
  letterInput.placeholder = '?';
  var lettersDiv = document.getElementsByClassName('letters')[0];
  lettersDiv.appendChild(letterInput);

  letterInput.addEventListener('focus', function(){
    setTimeout(function(){
      scrollTo(0,200);
    },10);
  }, false);

  letterInput.focus();

  // listen for letters
  letterInput.addEventListener('keyup', function(){
    var theLetter = letterInput.value;
    hangman.guessLetter(theLetter);
    letterInput.value = '';
    loadProgress();
  });

  // set the game number
  var gameNumber = hangman.gameNumber;

  // start timer
  var timeLeft = 60;
  var timerDiv = document.getElementsByClassName('timer')[0];
  timerDiv.textContent = timeLeft;
  timerDiv.style.color = '#000';
  var deadManTimeLeft = function() {
    timerDiv.textContent = timeLeft;
    if (timeLeft < 10) {
      timerDiv.style.color = '#af111c';
    }
  };

  var deadManInterval = setInterval(function() {
    if (hangman.gameNumber !== gameNumber) {
      clearInterval(deadManInterval);
    } else if (timeLeft > 0) {
      deadManTimeLeft();
    } else {
      timerDiv.textContent = 'Time\'s up!';
      clearInterval(deadManInterval);
      letterInput.parentNode.removeChild(letterInput);
      // remove the hint button
      var menuHint = document.getElementById('menu-hint');
      if (menuHint) {
        menuHint.parentNode.removeChild(menuHint);
      }

      // add the start game button
      var menu = document.getElementsByClassName('menu')[0],
          startGame = document.createElement('div');
      startGame.className = 'menu-item';
      startGame.id = 'menu-start';
      startGame.textContent = 'Click to play again';
      menu.appendChild(startGame);
      startGame.addEventListener('click', function() {
        startTheGame();
      });

      // reveal the secret word
      hangman.progress = hangman.secretBackup;
      var answer = document.getElementsByClassName('answer')[0];
      answer.style.color = '#af111c';
      loadProgress();
    }
    timeLeft --;
  }, 1000);

}

function loadProgress() {
  // load correct answers
  var answer = document.getElementsByClassName('answer')[0];
  answer.textContent = '';
  answer.style.color = '#000';
  for (var i=0; i < hangman.progress.length; i++) {
    if (hangman.progress[i] === undefined) {
      answer.textContent += '_ ';
    } else {
      answer.textContent += hangman.progress[i];
      answer.textContent += ' ';
    }
  }

  // load remaining number of guesses
  var figureDiv = document.getElementsByClassName('figure')[0],
      badGuesses = hangman.incorrectGuesses;
  if (badGuesses < 7) {
    figureDiv.textContent = 8 - badGuesses;
    figureDiv.textContent += ' guesses left!';
  } else if (badGuesses === 7) {
    figureDiv.textContent = '1 guess left!';
  } else {
    figureDiv.textContent = 'Dead man hanging!';

    // remove letter input
    var letterInput = document.getElementById('letter-input');
    letterInput.parentNode.removeChild(letterInput);

    // remove the hint button
    var menuHint = document.getElementById('menu-hint');
    if (menuHint) {
      menuHint.parentNode.removeChild(menuHint);
    }

    // add the start game button
    var menu = document.getElementsByClassName('menu')[0],
        startGame = document.createElement('div');
    startGame.className = 'menu-item';
    startGame.id = 'menu-start';
    startGame.textContent = 'Click to play again';
    menu.appendChild(startGame);
    startGame.addEventListener('click', function() {
      startTheGame();
    });

    // revealing secret word
    hangman.progress = hangman.secretBackup;
    var answer = document.getElementsByClassName('answer')[0];
    answer.style.color = '#af111c';
    answer.textContent = '';
    for (i=0; i < hangman.progress.length; i++) {
      if (hangman.progress[i] === undefined) {
        answer.textContent += '_ ';
      } else {
        answer.textContent += hangman.progress[i];
        answer.textContent += ' ';
      }
    }

    // stops the timer and increases game count
    hangman.gameNumber ++;
  }

  var guessesDiv = document.getElementsByClassName('guesses')[0];
  guessesDiv.innerHTML = '&nbsp;';
  for (i=0; i < hangman.guesses.length; i++) {
    guessesDiv.textContent += hangman.guesses[i];
  }

  if (hangman.checkProgress() === true) {
    // stop timer and increase game count
    hangman.gameNumber ++;

    // announce win
    var figureDiv = document.getElementsByClassName('figure')[0];
    figureDiv.textContent = 'Blondie saves Tuco.';

    // remove letter input
    var letterInput = document.getElementById('letter-input');
    letterInput.parentNode.removeChild(letterInput);
    var menuHint = document.getElementById('menu-hint');
    menuHint.parentNode.removeChild(menuHint);

    // add start game button
    var menu = document.getElementsByClassName('menu')[0];
    var startGame = document.createElement('div');
    startGame.className = 'menu-item';
    startGame.id = 'menu-start';
    startGame.textContent = 'Click to play again';
    menu.appendChild(startGame);
    startGame.addEventListener('click', function() {
      startTheGame();
    });

  }
}

function getHint() {
  hangman.hint();
  var letterInput = document.getElementById('letter-input');
  letterInput.focus();
   setTimeout(function(){
    scrollTo(0,200);
  },10);
}


(function setUpGame(){
  startTheGame();
})();

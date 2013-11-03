var hangman = new Hangman();

var GameElements = GameElements || {};

GameElements.addHint = function() {
  var hintButton = document.getElementById('menu-hint');
  if (!hintButton) {
    var menu = document.getElementsByClassName('menu')[0],
        hint = document.createElement('div');
    hint.className = 'menu-item';
    hint.id = 'menu-hint';
    hint.textContent = 'Gimme a hint';
    menu.appendChild(hint);
    hint.addEventListener('click', function() {
      GameFunctions.getHint();
      menu.removeChild(hint);
      setTimeout(function(){
        GameFunctions.loadProgress();
      }, 10);
    });
  }
}

GameElements.removeHint = function() {
  var hintButton = document.getElementById('menu-hint');
  if (hintButton) {
    hintButton.parentNode.removeChild(hintButton);
  }
}

GameElements.addStart = function() {
  var startButton = document.getElementById('menu-start');
  if (!startButton) {
    var menu = document.getElementsByClassName('menu')[0],
        startGame = document.createElement('div');
    startGame.className = 'menu-item';
    startGame.id = 'menu-start';
    startGame.textContent = 'Click to play again';
    menu.appendChild(startGame);
    startGame.addEventListener('click', function() {
      GameFunctions.startGame();
    });
  }
}

GameElements.removeStart = function() {
  var startButton = document.getElementById('menu-start');
  if (startButton) {
    startButton.parentNode.removeChild(startButton);
  }
}

GameElements.figureReset = function() {
  var figure = document.getElementsByClassName('figure')[0];
  figure.textContent = '';
}

GameElements.addInput = function() {
  var theLetterInput = document.getElementById('letter-input');
  if (!theLetterInput) {
    var letterInput = document.createElement('input');
    letterInput.id = 'letter-input';
    letterInput.placeholder = '?';

    var lettersDiv = document.getElementsByClassName('letters')[0];
    lettersDiv.appendChild(letterInput);

    // scroll down on input focus
    letterInput.addEventListener('focus', function(){
      setTimeout(function(){
        scrollTo(0,200);
      },10);
    }, false);

    // focus on the input
    letterInput.focus();

    // listen for letters
    letterInput.addEventListener('keyup', function(){
      var theLetter = letterInput.value;
      hangman.guessLetter(theLetter);
      letterInput.value = '';
      GameFunctions.loadProgress();
    });
  }
}

GameElements.removeInput = function() {
  var letterInput = document.getElementById('letter-input');
  if (letterInput) {
    letterInput.parentNode.removeChild(letterInput);
  }
}

GameElements.addTimer = function() {
  // set game number for unique timers
  var gameNumber = hangman.gameNumber;

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
      // if the game number has changed, abort this interval
      clearInterval(deadManInterval);
    } else if (timeLeft > 0) {
      // if there is time left, run the function
      deadManTimeLeft();
    } else {
      // time has run out
      timerDiv.textContent = 'Time\'s up!';
      clearInterval(deadManInterval);

      GameElements.removeInput();
      // remove the hint button
      GameElements.removeHint();

      // add the start game button
      GameElements.addStart();

      // reveal the secret word
      hangman.progress = hangman.secretBackup;

      // refresh the answer
      GameFunctions.loadProgress();

      // set the answer color to red
      var answer = document.getElementsByClassName('answer')[0];
      answer.style.color = '#af111c';
    }
    timeLeft --;
  }, 1000);
}

var GameFunctions = GameFunctions || {};

GameFunctions.loadProgress = function() {
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
    GameElements.removeInput();

    // remove the hint button
    GameElements.removeHint();

    // add the start game button
    GameElements.addStart();

    // revealing secret word
    hangman.progress = hangman.secretBackup;
    var theAnswer = document.getElementsByClassName('answer')[0];
    theAnswer.style.color = '#af111c';
    theAnswer.textContent = '';
    for (i=0; i < hangman.progress.length; i++) {
      if (hangman.progress[i] === undefined) {
        theAnswer.textContent += '_ ';
      } else {
        theAnswer.textContent += hangman.progress[i];
        theAnswer.textContent += ' ';
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
    var theFigureDiv = document.getElementsByClassName('figure')[0];
    theFigureDiv.textContent = 'Blondie saves Tuco.';

    // remove letter input
    GameElements.removeInput();

    GameElements.removeHint();

    // add start game button
    GameElements.addStart();

  }
};

GameFunctions.getHint = function() {
  hangman.hint();
  var letterInput = document.getElementById('letter-input');
  if (letterInput) {
    letterInput.focus();
     setTimeout(function(){
      scrollTo(0,200);
    },10);
  }
};


GameFunctions.startGame = function() {
  hangman.startGame();

  GameElements.removeStart();
  GameElements.addHint();
  GameElements.addInput();
  GameElements.figureReset();
  GameElements.addTimer();

  GameFunctions.loadProgress();
};

(function setUpGame(){
  GameFunctions.startGame();
})();

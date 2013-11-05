function HangManGame() {

  var words = ["COMPACT", "DISGUISES", "SMARTEST", "COOKIE", "EXTRA"] //hangman answers

  var hangManDiv = document.createElement('div')
  //create textbox that takes a letter input

//Begin Function Start Game
function StartGame() {
  hangManDiv.textContent = ""

  var textBox = document.createElement('input')
  textBox.type = "text"
  textBox.className = "textBox"
  textBox.name = "textBox"
  document.body.appendChild(hangManDiv)
  hangManDiv.appendChild(textBox)

    textBox.addEventListener.call(textBox, "input", function() {
      if (this.value.length > 1) {
          this.value = this.value.substring(1, 2);
      }
  })

  var secretIndex = Math.floor(Math.random() * words.length)
  this.secretWord = words[secretIndex] //chooses random word from words array

  convertToArray = function(word) { //function that turns word into array. example: ["w","o","r","d"]
    var wordArray = []
    for (var index = 0; index < word.length; index++) {
      var letter = word[index];
      wordArray.push(letter)
    }
    return wordArray
  }
  secretWordArray = convertToArray(secretWord); //executes toArray function


  var secretDiv = document.createElement('div'); // creates div
  createWordSpace = function(word) {

    for (var index=0; index < word.length; index++) {
      var letterDiv = document.createElement('div')
      var secretH2 = document.createElement('h2'); // creates h2
      secretH2.textContent = word[index]; // adds secret word as text content to the h2
      secretH2.className = "hidden "+word[index]
      letterDiv.className = "letter"
      letterDiv.id = "letter-"+index
      letterDiv.appendChild(secretH2)
      secretDiv.appendChild(letterDiv); //puts h2 in the div
    }
    hangManDiv.appendChild(secretDiv); // adds div to document
    hangManDiv.insertBefore(secretDiv,textBox);
  }

  createWordSpace(secretWordArray);

  var guessesLeft = 8
  this.guessesLeft = guessesLeft
  var guessesLeftOutput = document.createElement('h2')
  var guessesLeftDiv = document.createElement('div')
  guessesLeftOutput.textContent = "Guesses Left: " + guessesLeft
  guessesLeftDiv.id = "guessesLeft"
  guessesLeftDiv.class = "guessesLeft"
  guessesLeftDiv.appendChild(guessesLeftOutput)
  hangManDiv.insertBefore(guessesLeftDiv, secretDiv)

Guesses()
  }



  //end function StartGame


  //Begin Function Guesses
  function Guesses() {

    guessChecker = function (guess, secretWordArray) {
      var numberWrong = 0
      for (var index=0; index < secretWordArray.length; index++) {
        if (guess === secretWordArray[index]) {
          var lettersToReveal = document.getElementsByClassName(secretWordArray[index]) //array of letters that match that letter
          for (var i=0; i < lettersToReveal.length; i++) {
            lettersToReveal[i].className = lettersToReveal[i].textContent
          }
        } else {
          numberWrong++
        }
        if (numberWrong == secretWordArray.length) {
          guessesLeft--
          document.getElementById("guessesLeft").children[0].textContent = "Guesses Left: " + guessesLeft
        }
      }
      winChecker(secretWordArray)
    }
  //set secretH2.className to revealed

      winChecker = function(secretWordArray) {
      if (guessesLeft != 0) {
        var currentLettersArray = document.getElementsByClassName("letter") //array of letters
        hidden(currentLettersArray, function(elem, klass) {
         return (" " + elem.className + " " ).indexOf( " "+klass+" " ) > -1;
    })
      } else {
        youLose(secretWordArray)
      }
    }

    function hidden(currentLettersArray, fn) {
      var numOfHidden = currentLettersArray.length
      for (var index=0; index < currentLettersArray.length; index++){ //for each letter
        var thisLetter = currentLettersArray[index].children[0]
        var isHidden = fn(thisLetter, "hidden")
        numOfHidden -= evaluate(isHidden, numOfHidden)
      }
      if (numOfHidden === 0) { //if none are hidden
        youWin()
      } else {

      }
    };

    function evaluate(isHidden, numOfHidden) {
      if (isHidden) {  //if its hidden
        return 0
      } else {
        return 1
      }
    };

    function youWin () {
      var winBox = document.createElement('div')
      var winText = document.createElement('h3')
      winText.textContent = "You Win!! Click to Play again"
      winBox.appendChild(winText)
      hangManDiv.appendChild(winBox)
      winBox.addEventListener("click", function (){
      StartGame()
    })
    }

    function youLose(secretWordArray) {
      var loseBox = document.createElement('div')
      var loseText = document.createElement('h3')
      loseText.textContent = "You Lose!! Click to Play again"
      loseBox.appendChild(loseText)
      hangManDiv.appendChild(loseBox)
      for (var i=0; i < secretWordArray.length; i++) {
        thisLetter = document.getElementsByClassName(secretWordArray[i])
        thisLetter[0].className = secretWordArray[i].textContent
        }
      loseBox.addEventListener("click", function (){
      StartGame()
      })
    }

    textBox = document.getElementsByClassName('textBox')[0]
  textBox.addEventListener("input", function() {
    if (this.value) {
      var guess = this.value.toUpperCase()
      guessChecker(guess, secretWordArray)
     } else {
    }
  })
}
//end Function Guesses

StartGame()

}



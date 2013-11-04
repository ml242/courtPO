//alert("javascript is running")
function HangManGame() {
var words = ["COMPACT", "DISGUISES", "SMARTEST", "COOKIE", "EXTRA"] //hangman answers
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

createWordSpace = function(word) {
  var secretDiv = document.createElement('div'); // creates div
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
  document.body.appendChild(secretDiv); // adds div to document
}

createWordSpace(secretWordArray);

//create textbox that takes a letter input
var textBox = document.createElement('input')
textBox.type = "text"
textBox.className = "textBox"
textBox.name = "textBox"

document.body.appendChild(textBox)

//if user input == one of the letters in the word (iterate over it)
guessChecker = function (guess, secretWordArray) {
  for (var index=0; index < secretWordArray.length; index++) {
    if (guess === secretWordArray[index]) {
      var lettersToReveal = document.getElementsByClassName(secretWordArray[index]) //array of letters that match that letter
      for (var i=0; i < lettersToReveal.length; i++) {
        lettersToReveal[i].className = lettersToReveal[i].textContent
      }
    }
  }
}
//set secretH2.className to revealed

textBox.addEventListener.call(textBox, "input", function() {
    if (this.value.length > 1) {
        this.value = this.value.substring(1, 2);
    }
})

textBox.addEventListener.call(textBox, "input", function() {
  if (this.value) {
    var guess = this.value.toUpperCase()
    guessChecker(guess, secretWordArray)
   } else {
    alert("I went to else for some reason")
  }
})




}



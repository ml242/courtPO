trial.js




 var wordList = ['red', 'dog']
 randomWord = WDIBelt.random(wordList)
 var secretWord = randomWord;

charGuess = 'a'
"a"
secretWord.split('')
["r", "e", "d"]
secretWordSpilt = secretWord.split('')
["r", "e", "d"]
secretWordSpilt
["r", "e", "d"]
secretWordSpilt[0]
"r"
secretWordSpilt[1]
"e"
secretWordSpilt[2]
"d"
charGuess === secretWordSpilt[0]
false
charGuess === secretWordSpilt[1]
false
charGuess === secretWordSpilt[2]
false
secretWordSpilt.length
3
secretWordSpilt.length -1
2
secretWordSpilt[secretWordSpilt.length -1]
"d"
endOfArray = secretWordSpilt[secretWordSpilt.length -1]
"d"
endOfArray
"d"

if(charGuess != endOfArray) console.log("try another guess")
try another guess
undefined
charGuess = 'e'
"e"
charGuess === secretWordSpilt[0]
false
charGuess === secretWordSpilt[1]
true
if (charGuess === secretWordSpilt[1]) console.log("you have found a match")
you have found a match



function game(start){
  this.game = game
  alert('game started');

var wordList = ['red', 'dog']
function getWord()
  {
    var randomWord = WDIBelt.random(wordList)
    return randomWord;
  }
console.log(getWord());
this.getWord();

}



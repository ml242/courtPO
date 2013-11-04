var Game = Game || {};

//random word
a = ["dog", "cat", "mouse"];
WDIBelt.random(a);

//set randomWord equal to a variable
var randomWord = WDIBelt.random(a);
console.log(randomWord);

//place randomWord into an array
randomWordArray = [];
randomWordArray = randomWord.split('');


//take a character from a person
var charGuess = [];
charGuess = prompt("letter please");
console.log(charGuess);

if (WDIBelt.contains(randomWordArray, charGuess)){
 console.log ("place letter where they have declared it")
else
 console.log("add one to their count and have thme try again")
};





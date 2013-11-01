//COUNT
var lyric = "We should have each other to tea";

function wordCount(lyric) {
  var arrayOfWords = input.split.(' ');
  return arrayOfWords.length;
}

wordCount(lyric);

// FREQUENCY
var lyric  = "o bla di o bla da";

function wordFrequency(lyric) {
  var arrayOfWords = lyric.split(" ");
  var frequency = {};
  for (var i = 0; i < arrayOfWords.length; i++) {
    var thisWord = arrayOfWords[i];
    if (frequency[thisWord]) {
      frequency[thisWord]++;
    } else {
      frequency[thisWord] = 1;
    }
  }
  return frequency;
}

// LONGEST WORD
wordFrequency(lyric) // { o: 2, blah: 2, di: 1, da: 1 }

var lyric = "heaven knows I'm miserable now";

function longestWord() {
  var arrayOfWords = lyric.split(" ");
  var longest = "";
  var wordLength = 0;
  for (var i = 0; i < arrayOfWords.length; i++) {
    numCharacters = arrayOfWords[i].length;
      if (numCharacters > wordLength) {
        var wordLength = numCharacters;
        var longest = arrayOfWords[i];
      }
  }
  console.log(longest);
}

longestWord(lyric);

// SHORTEST WORD
var lyric = "I am the ghost of Troubled Joe";

function shortestWord() {
  var arrayOfWords = lyric.split(" ");
  var shortest = arrayOfWords[0];
  var wordLength = arrayOfWords[0].length;

  for (var i = 1; i < arrayOfWords.length; i++) {
    numCharacters = arrayOfWords[i].length;
    if (numCharacters < wordLength) {
      var shortest = arrayOfWords[i];
      var wordLength = numCharacters;
    }
  }
  console.log(shortest);
}

shortestWord(lyric);

//LONGEST WORDS - refactored from longestWord
var lyric = "To what you think is your thing";

function longestWord() {
  var arrayOfWords = lyric.split(" ");
  var longest = "";
  var wordLength = 0;
  for (var i = 0; i < arrayOfWords.length; i++) {
    numCharacters = arrayOfWords[i].length;
      if (numCharacters > wordLength) {
        var wordLength = numCharacters;
        var longest = arrayOfWords[i];
      }
  }
  console.log(longest);
}

longestWords
(lyric);

//SHORTEST WORDS - refactored from shortestWord



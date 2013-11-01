function wordCount (lyrics) {
  var newArray = lyrics.split(' ');
  var count = newArray.length;
  console.log("There are " + count + " words in this lyric.");
}

var lyric = "We should have each other to tea";
wordCount(lyric);

function wordFrequency(lyrics){
  var newArray = lyrics.split(' ');
  var newObject = {};
  for (var i = 0; i < newArray.length; i++) {
    var currentWord = newArray[i];
    if (newObject[currentWord]){
      newObject[currentWord]++;
    } else {
      newObject[currentWord] = 1;
    }
  }
  return newObject;
}

var lyric = "o bla di o bla da";
wordFrequency(lyric); // { o: 2, blah: 2, di: 1, da: 1 }

function longestWord(lyrics){
  var newArray = lyrics.split(' ');
  var longest = "";
  for (var i = 0; i < newArray.length; i++) {
    var currentWord = newArray[i];
    if (currentWord.length > longest.length) {
      longest = currentWord;
    }
  }
  return longest;
}

var lyric = "heaven knows I'm miserable now";
longestWord(lyric); // "miserable"

function shortestWord(lyrics){
  var newArray = lyrics.split(' ');
  var shortest = newArray[0];
  for (var i = 0; i < newArray.length; i++) {
    var currentWord = newArray[i];
    if (currentWord.length < shortest.length) {
      shortest = currentWord;
    }
  }
  return shortest;
}

var lyric = "I am the ghost of Troubled Joe";
shortestWord(lyric); // "I"


function longestWords(lyrics){
  var newArray = lyrics.split(' ');
  var longest = "";
  var alsoLongest = "";
  var longestWordsArray = [];
  for (var i = 0; i < newArray.length; i++) {
    var currentWord = newArray[i];
    if (currentWord.length > longest.length) {
      longest = currentWord;
    } else if (currentWord.length === longest.length){
      alsoLongest = currentWord;
      longestWordsArray.push(alsoLongest);
    }
  }
  longestWordsArray.push(longest);
  return longestWordsArray;
}
var lyric = "To what you think is your thing";
longestWords(lyric); // ["think", "thing"]


function shortestWords(lyrics){
  var newArray = lyrics.split(' ');
  var shortest = newArray[0];
  var shortestWordsArray = [];
  for (var i = 0; i < newArray.length; i++) {
    var currentWord = newArray[i];
    if (currentWord.length <= shortest.length) {
      shortest = currentWord;
      shortestWordsArray.push(shortest);
    }
  }
  if (shortestWordsArray[0] !== shortestWordsArray[1]){
    shortestWordsArray.shift();
  }
  return shortestWordsArray;
}

var lyric = "oh ask me why and I'll die";
shortestWords(lyric); // ["oh", "me"]


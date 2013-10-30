function wordCount (lyrics) {
  var newArray = lyrics.split(' ');
  var count = newArray.length;
  console.log("There are " + count + " words in this lyric.");
}

var lyric = "We should have each other to tea";
wordCount(lyric);



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

var lyric = "o bla di o bla da";
wordFrequency(lyric) // { o: 2, blah: 2, di: 1, da: 1 }



function longestWord(lyric) {
  var arrayOfWords = lyric.split(" ");
  var longestWord = "";
  for (var i = 0; i < arrayOfWords.length; i++) {
    var thisWord = arrayOfWords[i];
    if (thisWord.length > longestWord.length){
      longestWord = thisWord;
    }
  }
  return longestWord;
}

var lyric = "heaven knows I'm miserable now";
longestWord(lyric) // "miserable"



function shortestWord(lyric) {
  var arrayOfWords = lyric.split(" ");
  var shortestWord = arrayOfWords[0];
  for (var i = 0; i < arrayOfWords.length; i++) {
    var thisWord = arrayOfWords[i];
    if (shortestWord.length > thisWord.length) {
      shortestWord = thisWord;
    }
  }
  return shortestWord;
}

var lyric = "I am the ghost of Troubled Joe";
shortestWord(lyric) // "I"



function shortestWords(lyric) {
  var arrayOfWords = lyric.split(" ");
  var shortestWords = [];
  var shortestWord = arrayOfWords[0];
  for (var i = 0; i < arrayOfWords.length; i++) {
    var thisWord = arrayOfWords[i];
    if (shortestWord.length >= thisWord.length) {
      shortestWord = thisWord;
      shortestWords.push(shortestWord);
    }
  }
  if (shortestWords[0].length > shortestWords[1].length) {
   shortestWords.shift();
  }
  return shortestWords;
}

var lyric = "oh ask me why and I'll die";
shortestWords(lyric) // ["oh", "me"]



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



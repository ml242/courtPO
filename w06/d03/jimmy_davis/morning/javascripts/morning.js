// Exercise: https://gist.github.com/tealtail/394d40451f91eedb3361


function wordCount(lyric) {
  var arrayOfWords = lyric.split(" ");
  return arrayOfWords.length
}
var lyric = "We should have each other to tea";
console.log(wordCount(lyric));



function wordFrequency(lyric) {
  var arrayOfWords = lyric.split(" ");
  var frequency = {};
  for (i = 0; i < arrayOfWords.length; i++) {
    var thisWord = arrayOfWords[i];
    if (frequency[thisWord]) {
      frequency[thisWord]++;
    } else {
      frequency[thisWord] = 1;
    }
  }
  return frequency
}
var lyric = "o bla di o bla da";
console.log(wordFrequency(lyric));



function longestWord(lyric) {
  var arrayOfWords = lyric.split(" ");
  var longest = 0;
  var word = null;
  for (var i = 0; i < arrayOfWords.length; i++) {
    if (longest < arrayOfWords[i].length) {
      longest = arrayOfWords[i].length;
      word = arrayOfWords[i];
    }
  }
  return word
}
var lyric = "heaven knows I'm miserable now";
console.log(longestWord(lyric));



function shortestWord(lyric) {
  var arrayOfWords = lyric.split(" ");
  var shortest ;
  // var word ;
  for (var i = 0; i < arrayOfWords.length; i++) {
    if (!shortest || shortest.length > arrayOfWords[i].length) {
      shortest = arrayOfWords[i];
      // word = arrayOfWords[i];
    }
  }
  return word
}
var lyric = "I am the ghost of Troubled Joe";
console.log(shortestWord(lyric));

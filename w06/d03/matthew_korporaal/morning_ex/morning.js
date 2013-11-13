function wordCount (lyric) {
  var lyrArray = lyric.split(" ");
  return lyrArray.length;
}
function wordFrequency(lyric) {
  var lyrArray = lyric.split(" ");
  var freq = {};
  for(i=0;i<lyrArray.length;i++) {
    var word = lyrArray[i];
    if (freq[word]){
      freq[word]++;
    } else {
      freq[word] = 1;
    }
  }
  return freq;
}
function longestWord(lyric) {
  var lyrArray = lyric.split(" ");
  var max = "";
  for(i=0;i<lyrArray.length;i++) {
    if (lyrArray[i].length > max.length){
      max = lyrArray[i];
    }
  }
  return max;
}
function shortestWord(lyric) {
  var lyrArray = lyric.split(" ");
  var min = "";
  for(i=0;i<lyrArray.length;i++) {
    if (lyrArray[i].length < min.length || min.length == 0){
      min = lyrArray[i];
    }
  }
  return min;
}
function shortestWords(lyric){
  var lyrArray = lyric.split(" ");
  var shorties = [];
  var shortLength = 0;
  for(i=0;i<lyrArray.length;i++) {
    if (lyrArray[i].length <= shortLength || shortLength == 0) {
      shorties.push(lyrArray[i]);
      shortLength = lyrArray[i].length;
    }
  }
  return shorties;
}
function longestWords(lyric){
  var lyrArray = lyric.split(" ");
  var longies = [];
  var longLength = 0;
  debugger;
  for(i=0;i<lyrArray.length;i++) {
    if (lyrArray[i].length == longLength || longLength == 0) {
      longies.push(lyrArray[i]);
      longLength = lyrArray[i].length;
    } else if (lyrArray[i].length > longLength){
      longies = [];
      longies.push(lyrArray[i]);
      longLength = lyrArray[i].length;
    }
  }
  return longies;
}
var lyric = "We should have each other to tea"
console.log(wordCount(lyric)); // 7

var lyric = "o bla di o bla da";
console.log(wordFrequency(lyric)); //{ o: 2, blah: 2, di: 1, da: 1 }

var lyric = "heaven knows I'm miserable now";
console.log(longestWord(lyric)); // "miserable"

var lyric = "I am the ghost of Troubled Joe";
console.log(shortestWord(lyric)); // "I"

var lyric = "oh ask me why and I'll die";
console.log(shortestWords(lyric)); // ["oh", "me"]

var lyric = "To what you think is your thing";
console.log(longestWords(lyric)); // ["think", "thing"]

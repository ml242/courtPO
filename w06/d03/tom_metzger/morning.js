var lyric = "We should have each other to tea";

function wordCount(sentence) {
  var wordArray = sentence.split(" ");
  return wordArray.length
}

console.log(wordCount(lyric));




var lyric = "o bla di o bla da";

function wordFrequency(sentence) {
  var wordArray = sentence.split(" ");
  var frequency = {}
  for (var i = 0; i < wordArray.length; i++){
    if (frequency[wordArray[i]]) {
      frequency [wordArray[i]]++;
    } else {
      frequency[wordArray[i]] = 1;
    }
  }
  return frequency;
}




var lyric = "heaven knows I'm miserable now";

function longestWord(sentence) {
  var wordArray = sentence.split(" ");
  var longest = 0;
  var word = "";
  for (var i = 0; i < wordArray.length; i++){
    if (wordArray[i].length > longest){
      longest = wordArray[i].length;
      word = wordArray[i];
    }
  }
  return "The longest word is " + word + " with a length of " + longest;
}

foo = longestWord(lyric);
console.log(foo);



var lyric = "I am the ghost of Troubled Joe";

function shortestWord(sentence) {
  var wordArray = sentence.split(" ");
  var shortest = wordArray[1].length;
  var word = "";
  for (var i = 0; i < wordArray.length; i++){
    if (wordArray[i].length < shortest){
      shortest = wordArray[i].length;
      word = wordArray[i];
    }
  }
  return "The shortest word is " + word + " with a length of " + shortest;
}

foo = shortestWord(lyric);
console.log(foo);


var lyric = "To what you think is your thing";

function longestWords(sentence) {
  var wordArray = sentence.split(" ");
  var longest = 0;
  var word = [];
  for (var i = 0; i < wordArray.length; i++){
    if (wordArray[i].length > longest){
      longest = wordArray[i].length;
      word = [wordArray[i]]
    } else if (wordArray[i].length === longest) {
      word.push(wordArray[i]);
    }
  }
  return "The longest word(s): " + word + " Length = " + longest;
}

foo = longestWords(lyric);
console.log(foo);



var lyric = "oh ask me why and I'll die";

function shortestWords(sentence) {
  var wordArray = sentence.split(" ");
  var shortest = wordArray[1].length;
  var word = [];
  for (var i = 0; i < wordArray.length; i++){
    if (wordArray[i].length < shortest){
      shortest = wordArray[i].length;
      word = [wordArray[i]]
    } else if (wordArray[i].length === shortest) {
      word.push(wordArray[i]);
    }
  }
  return "The shortest word(s): " + word + " Length = " + shortest;
}

foo = shortestWords(lyric);
console.log(foo);










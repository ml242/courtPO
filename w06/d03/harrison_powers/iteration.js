function wordCount(string) {
  return string.split(' ').length
};

function wordFrequency(string) {
  var words = string.split(' '),
      frequency = {};

  for (i=0; i < words.length; i++) {
    frequency[words[i]] += 1;
  };

  return frequency;
};

function longestWords(string) {
  var words = string.split(' '),

      // sorting the words by length in descending order
      sortedWords = words.sort(function(a, b){
        return b.length - a.length;
      });

  return sortedWords;
};

function longestWord(string) {
  var sortedWords = longestWords(string),
      theLongestWord = sortedWords[0];

  return theLongestWord;
};

function shortestWords(string) {
  var words = string.split(' '),

      // sorting the words by length in ascending order
      sortedWords = words.sort(function(a, b){
        return a.length - b.length;
      });

  return sortedWords;
};

function shortestWord(string) {
  var sortedWords = shortestWords(string),
      theShortestWord = sortedWords[0];

  return theShortestWord;
}

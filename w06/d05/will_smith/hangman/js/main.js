console.log('hai');
  var gotham = [
    'Batman',
    'The Dark Knight',
    'Robin',
    'Alfred',
    'Commissioner Gordon',
    'The Mayor',
    'Harvey Dent',
    'The Joker',
    'Bane',
    'Ducart'];
  var secretWord = gotham[Math.floor(Math.random() * gotham.length)];
window.onload = function() {
  var start = document.getElementById("start");
  var hangman = document.getElementById("hangman");
  var letter = document.getElementById("letter");
  var form = document.getElementById("form");
// The game selects a random word from a word list and makes that the secret word
  start.addEventListener("click", fnToStartGame);
  form.addEventListener("mouseover", fnToAddSecretWord);
}
  var fnToStartGame= function() {
    this.parentElement.childNodes[3].className = "";
  };
  var fnToAddSecretWord = function() {
    this.children = document.createElement("p");
  };

var Hangman = Hangman || {};

Hangman.Data = function() {

  this.names = [
  "PHIL",
  "ALICIA",
  "JONATHAN"
];
  this.lettersCorrect = 0;
  this.badGuessCount = 0;
  this.gamesWon = parseInt(document.getElementsByClassName("games-won")[0].innerHTML,10);
  this.gamesLost = parseInt(document.getElementsByClassName("games-lost")[0].innerHTML,10);
  this.gameOver = false;
}

Hangman.Data.prototype.getSecretWord = function() {
  return this.names[Math.floor(Math.random() * this.names.length)].split("");
}
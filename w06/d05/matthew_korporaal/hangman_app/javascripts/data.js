var Hangman = Hangman || {};

Hangman.Data = function() {

  this.names = [
  "PHIL",
  "ALICIA",
  "JONATHAN"
];
}

Hangman.Data.prototype.getSecretWord = function() {
  return this.names[Math.floor(Math.random() * this.names.length)].split("");

}
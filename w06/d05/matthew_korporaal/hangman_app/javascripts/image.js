var Hangman = Hangman || {};

Hangman.Image = function(imageNode) {
  this.imageNode = imageNode;
  this.show();
}

Hangman.Image.prototype.show = function() {
  this.imageNode.className = "";
}

Hangman.Image.prototype.hide = function() {
  this.imageNode.className = "hidden";
}
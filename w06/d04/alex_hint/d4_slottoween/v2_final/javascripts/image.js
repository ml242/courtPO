var Slottoween = Slottoween || {};

Slottoween.Image = function(imageNode) {
  this.imageNode = imageNode;
}

Slottoween.Image.prototype.show = function() {
  this.imageNode.className = ""
}

Slottoween.Image.prototype.hide = function() {
  this.imageNode.className = "hidden"
}

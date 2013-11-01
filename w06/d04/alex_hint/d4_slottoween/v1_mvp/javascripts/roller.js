var Slottoween = Slottoween || {};

Slottoween.Roller = function(rollerNumber) {
  this.number = rollerNumber;
  this.spinning = false;
  this.curIndex = this.generateRandomRollerIndex();

  var rollerNodes = document.getElementsByClassName("roller");
  var rollerNode = rollerNodes[rollerNumber];
  var imageNodes = rollerNode.children[0].children;

  this.images = [];
  for(var i=0; i<imageNodes.length; i++) {
    var imageNode = imageNodes[i];
    this.images[i] = new Slottoween.Image(imageNode);
  }

  this.showCurrentImage();
}

Slottoween.Roller.prototype.LARGEST_IMAGE_INDEX = 9;

Slottoween.Roller.prototype.generateRandomRollerIndex = function() {
  return Math.floor((Math.random()*this.LARGEST_IMAGE_INDEX));
}

Slottoween.Roller.prototype.spin = function() {
  this.spinning = true;
  this.images[this.curIndex].hide();
}

Slottoween.Roller.prototype.stop = function() {
  this.curIndex = this.generateRandomRollerIndex();
  this.spinning = false;
  this.showCurrentImage();
}

Slottoween.Roller.prototype.showCurrentImage = function() {
  this.images[this.curIndex].show();
}

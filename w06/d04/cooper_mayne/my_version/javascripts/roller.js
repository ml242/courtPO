var Slottoween = Slottoween || {};

Slottoween.Roller = function(rollerNumber) {
  this.number = rollerNumber;     //not great var name
  this.spinning = false;

  this.curIndex = Math.floor((Math.random()*this.LARGEST_IMAGE_INDEX))

  var rollerNodes = document.getElementsByClassName("roller");
  var rollerNode = rollerNodes[rollerNumber].children;
  var imageNodes = rollerNode[0].children;

  this.images = [];
  for(var i=0; i<imageNodes.length; i++) {
    var imageNode = imageNodes[i];
    this.images[i] = new Slottoween.Image(imageNode);
  }

  this.showCurrentImage();

  this.soundBoard = new Slottoween.SoundBoard();
}

Slottoween.Roller.prototype.LARGEST_IMAGE_INDEX = 9;

Slottoween.Roller.prototype.spin = function() {
  this.spinning = true;
  this.soundBoard.playSpin();
  this.spinForever();
}

Slottoween.Roller.prototype.spinForever = function() {
  if (this.spinning == true) {
    this.incrementImage();

    var roller = this;
    setTimeout(function() {
      roller.spinForever()
    }, 140);
  }
}

Slottoween.Roller.prototype.incrementImage = function() {
  this.images[this.curIndex].hide();
  this.incrementCurIndex();
  this.images[this.curIndex].show();
}

Slottoween.Roller.prototype.incrementCurIndex = function() {
  if (this.curIndex == this.LARGEST_IMAGE_INDEX) {
    this.curIndex = 0;
  }
  else {
    this.curIndex++;
  }
}

Slottoween.Roller.prototype.showCurrentImage = function() {
  this.images[this.curIndex].show();
}

Slottoween.Roller.prototype.stop = function() {
  this.spinning = false;
  this.soundBoard.stopSpin();
}

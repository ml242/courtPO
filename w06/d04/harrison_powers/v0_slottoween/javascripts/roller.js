function Roller(rollerNumber) {
  this.rollerNumber = rollerNumber;
  this.spinning = false;

  if (this.rollerNumber === 1) {
    this.images = document.getElementById("images-1").children;
  }
  else if (this.rollerNumber === 2) {
    this.images = document.getElementById("images-2").children;
  }
  else if (this.rollerNumber === 3) {
    this.images = document.getElementById("images-3").children;
  }

}

Roller.prototype.spin = function() {
  this.spinning = true;

  var audio = new Audio("audio/item_box.mp3");
  audio.play();

  for (var i=0; i < this.images.length; i++) {
    this.images[i].className = "hidden";
  }

  var imageNum = Math.floor(Math.random()*10);
  var self = this;

  var spinterval = setInterval(function(){

    if (imageNum === 0) {
      // make the previous image invisible
      var preImage = self.images[9];
      preImage.className = 'hidden';
    } else {
      var preImage = self.images[imageNum-1];
      preImage.className = 'hidden';
    }

    // make the image visible
    var image = self.images[imageNum];
    image.className = "";

    // increase the image index
    imageNum++;

    // reset the image index when it reaches 10
    if (imageNum > 9) {
      imageNum = 0;
    }

    // stop the interval after the stop function is called
    if (self.spinning === false) {
      clearInterval(spinterval);
    }

  }, 100);

}

Roller.prototype.stop = function() {
  this.spinning = false;
  this.curIndex = Math.floor(Math.random()*10)
}

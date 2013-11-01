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
  this.displayCurrentImg();
}

Roller.prototype.spin = function() {
  // don't do anything, wtv
  this.spinning = true;
  var curImgs = document.getElementsByClassName('visible');
  for (var i = 0; i < curImgs.length; i++) {
      var curImg = curImgs[i];
      curImg.className = 'hidden';
    }
};

Roller.prototype.stop = function() {
  this.spinning = false;
  this.curIndex = Math.floor(Math.random()*10);
  var image = this.images[this.curIndex];
  image.className = 'visible';

};

Roller.prototype.displayCurrentImg = function() {
  this.curIndex = Math.floor(Math.random()*10);
  // debugger
  this.images[this.curIndex].className = 'visible';
};

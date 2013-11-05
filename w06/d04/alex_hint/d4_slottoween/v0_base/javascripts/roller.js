function Roller(rollerNumber) {
  this.rollerNumber = rollerNumber;
  this.rollingDone = false;
  this.curIndex = 0;

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
  // don't do anything, wtv
  var image = this.images[this.curIndex];
  image.className = "hidden";
  this.rollingDone = false;
}

Roller.prototype.stop = function() {
  this.curIndex = Math.floor(Math.random()*10)
  var image = this.images[this.curIndex];
  image.className = "";
  this.rollingDone = true;
}


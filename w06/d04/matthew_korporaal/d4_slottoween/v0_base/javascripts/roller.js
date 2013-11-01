function Roller(rollerNumber) {
  this.rollerNumber = rollerNumber;
  this.isSpinning = false;
  this.images = document.getElementById("images-" + rollerNumber).children;
}

Roller.prototype.spin = function() {
  this.isSpinning = true;
  // don't do anything, wtv
}

Roller.prototype.stop = function() {
  this.curIndex = Math.floor(Math.random()*10)
  var image = this.images[this.curIndex];
  image.className = "";
  this.isSpinning = false;
  // disengage button
  button = document.getElementById("button-" + this.rollerNumber);
  button.children[0].src = "images/red_button_depressed.png";

  //debugger
}

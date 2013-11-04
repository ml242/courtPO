
function Roller(rollerNumber) {
  // Load the images in
  this.rollerNumber = rollerNumber;
    this.images = document.getElementById("images-"+rollerNumber).children
    this.numberOfRolls = 0
    this.rolling = false
}

Roller.prototype.spin = function() {
 //nothing yet
  this.rolling = false
  this.numberOfRolls = 0
  if (this.image) {
  this.image.className = "hidden";
  }
}

Roller.prototype.stop = function() {
  // Choose a random index that is where the roller has stopped
  if (this.numberOfRolls === 0) {
    this.currentIndex = Math.floor(Math.random()*10);
    this.image = this.images[this.currentIndex];
    this.image.className = "";
    this.rolling = true
    this.numberOfRolls++
  }
}

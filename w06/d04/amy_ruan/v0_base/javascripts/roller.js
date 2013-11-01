function Roller (rollerNumber) {
 this.rollerNumber = rollerNumber;
 if(this.rollerNumber == 1){
  this.images = document.getElementById("images-1").children;
 }
 else if(this.rollerNumber == 2){
  this.images = document.getElementById("images-2").children;
 }
 else if(this.rollerNumber == 3){
  this.images = document.getElementById("images-3").children;
 }
 this.status = false;
   // Load the images in
}

Roller.prototype.spin = function() {
  this.status = true
  }

Roller.prototype.stop = function() {
  this.curIndex = Math.floor(Math.random()*10);
  var image = this.images[this.curIndex];
  image.className = "unhidden"
  this.status = false;
  // Choose a random index that is where the roller has stopped
}

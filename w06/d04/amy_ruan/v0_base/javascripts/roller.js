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

 this.status = true;
   // Load the images in
}

Roller.prototype.spin = function() {
  // var images = this.images;
  // if(this.status == true){
  //   for(var i=0;i<images.length;i++){
  //       var count = i;
  //       var a = images[i];
  //       var b = images[count];
  //       b.className="appear"
  //       setTimeout(function() {
  //         a.className="hidden"
  //         }, 2000);
  //   }
    // debugger;
  }
}

Roller.prototype.stop = function() {
  this.curIndex = Math.floor(Math.random()*10);
  var image = this.images[this.curIndex];
  image.className = "unhidden"
  this.status = false;
  // Choose a random index that is where the roller has stopped
}

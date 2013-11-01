function Roller (rollerNode) {
  var name = "roller-" + rollerNode;
  this.name = name;
  this.images = document.getElementById(name).getElementsByTagName('img');
  this.spinning = false;
}


Roller.prototype.spin = function() {
  this.spinning = true;
  this.makeStop = false;
  this.doSpin();
};

Roller.prototype.doSpin = function(){
  if(!this.makeStop){
    this.infiniteSpin();
  }
};

Roller.prototype.infiniteSpin = function() {
  roller = document.getElementById(this.name);
  showing = roller.getElementsByClassName("showing");
  if(showing.length >= 1){
    showing[0].classList.add("hidden");
    showing[0].classList.remove("showing");

  }
  num = Math.floor(Math.random() * 10);
  this.images[num].className = "showing";
  var that = this;
  this.timeout = setTimeout(function(){that.infiniteSpin()}, 100);
};




Roller.prototype.stop = function() {
  clearTimeout(this.timeout);
  this.makeStop = true;
  this.spinning = false;
  // Choose a random index that is where the roller has stopped
};

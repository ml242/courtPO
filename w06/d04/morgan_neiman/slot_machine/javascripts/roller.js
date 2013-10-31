function Roller (rollerNode) {
  var name = "roller-" + rollerNode;
  this.images = document.getElementById(name).getElementsByTagName('img');

}

Roller.prototype.spin = function() {

};

Roller.prototype.stop = function() {
  // Choose a random index that is where the roller has stopped
};

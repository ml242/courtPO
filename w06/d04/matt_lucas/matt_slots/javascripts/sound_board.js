// Don't Worry About This File
// It's just for fun!
// Feel free to take a look around though to see how the Audio API works in HTML5 though!
// (note that this is not production ready because it will not work with browsers that do not conform to the HTML5 standard)

var Slottoween = Slottoween || {};

Slottoween.SoundBoard = function() {
  this.coin = new Audio("audio/coin.wav");
  this.spin = new Audio("audio/item_box.mp3");
  this.spin.loop = true;
  this.lose = new Audio("audio/lose.wav");
  this.win = new Audio("audio/win.wav");
}

Slottoween.SoundBoard.prototype.playCoin = function() {
  this.coin.play();
}

Slottoween.SoundBoard.prototype.playSpin = function() {
  var delay = Math.floor((Math.random()*500))
  var soundBoard = this;

  setTimeout(function(){
    soundBoard.spin.play();
  }, delay)
}

Slottoween.SoundBoard.prototype.stopSpin = function() {
  this.spin.pause();
}

Slottoween.SoundBoard.prototype.playLose = function() {
  this.lose.play();
}

Slottoween.SoundBoard.prototype.playWin = function() {
  this.win.play();
}


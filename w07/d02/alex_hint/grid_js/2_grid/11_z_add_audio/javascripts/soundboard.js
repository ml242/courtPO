SoundBoard = function() {
  this.song = new Audio("audio/theme.mp3");
  this.song.loop = true;

  this.khuff = new Audio("audio/khuff.mp3");
}

SoundBoard.prototype.playSong = function() {
  this.song.play();
}

SoundBoard.prototype.playKhuff = function() {
  this.khuff.play();
}

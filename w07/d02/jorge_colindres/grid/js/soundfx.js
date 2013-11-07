function SoundFX() {
  this.themeSong = new Audio ('audio/theme.mp3');
  this.themeSong.loop = true;
}

SoundFX.prototype.playThemeSong = function(){
  this.themeSong.play();
};

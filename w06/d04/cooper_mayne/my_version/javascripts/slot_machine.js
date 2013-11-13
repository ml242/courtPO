var Slottoween = Slottoween || {};

Slottoween.SlotMachine = function() {
  this.spinning = false; // tracks whether the slot machine is spinning or not

  this.handle = document.getElementsByClassName("handle")[0]; // stores the handle
  this.addHandleListeners(this.handle);

  for (var i=0; i<3; i++ ) {
    var stopButton = document.getElementsByClassName("stop-button")[i];
    this.addStopButtonListeners(stopButton, i);
  }

  this.rollers = [];
  for (var i=0; i<3; i++) {
    var roller = new Slottoween.Roller(i);
    this.rollers.push(roller);
  }

  this.gamesWon = 0;
  this.gamesWonNode = document.getElementsByClassName("games-won")[0];

  this.totalGames = 0;
  this.totalGamesNode = document.getElementsByClassName("total-games")[0];

  this.soundBoard = new Slottoween.SoundBoard();
}

Slottoween.SlotMachine.prototype.addHandleListeners = function(handle) {
  var slotMachine = this;

  handle.addEventListener("mousedown", function(e) {
    if (slotMachine.spinning) {
      alert("You can't spin again until you finish your game!");
      return;
    }
    handle.style.top = "0px";
  });

  handle.addEventListener("mouseup", function(e) {
    handle.style.top = "-300px";
    slotMachine.spin();
  });

}

Slottoween.SlotMachine.prototype.addStopButtonListeners = function(stopButton, index) {

  var slotMachine = this;

  stopButton.addEventListener("mousedown", function(e) {
    if (slotMachine.spinning == false) {
      alert("You have to have pulled the claw down before you spin!");
      return;
    }

    var image = this.children[0];
    image.src = "images/red_button_depressed.png";
  });

  stopButton.addEventListener("mouseup", function(e) {
    var image = this.children[0];
    image.src = "images/red_button.png";

    slotMachine.stopRollerByIndex(index);
  })
}


Slottoween.SlotMachine.prototype.spin = function() {
  this.spinning = true;
  WDIBelt.each(this.rollers, function(roller){
    roller.spin();
  });
}

Slottoween.SlotMachine.prototype.stopRollerByIndex = function(index) {
  this.rollers[index].stop();
  this.soundBoard.playCoin();
  this.determineResults();
}

Slottoween.SlotMachine.prototype.determineResults = function() {
  var r0 = this.rollers[0];
  var r1 = this.rollers[1];
  var r2 = this.rollers[2];
  if (r0.spinning === false && r1.spinning === false && r2.spinning === false) {
    this.spinning = false;
    this.totalGames += 1;
    if (r0.curIndex === r1.curIndex && r1.curIndex === r2.curIndex) {
      this.gamesWon += 1;
      this.soundBoard.playWin();
      alert("You Win!")
    }
    else {
      this.soundBoard.playLose();
      alert("You Lose!")
    }
    this.updateScoreBoard();
  }
}

Slottoween.SlotMachine.prototype.updateScoreBoard = function() {
  this.gamesWonNode.innerHTML = this.gamesWon;
  this.totalGamesNode.innerHTML = this.totalGames;
}

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
}

Slottoween.SlotMachine.prototype.addHandleListeners = function(handle) {
  handle.addEventListener("click", function(e) {
    slotMachine.spin();
  });
};

Slottoween.SlotMachine.prototype.addStopButtonListeners = function(stopButton, index) {
  stopButton.addEventListener("click", function(e) {
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
  this.determineResults();
}

Slottoween.SlotMachine.prototype.determineResults = function() {
  var r0 = this.rollers[0], r1 = this.rollers[1], r2 = this.rollers[2];

  if (r0.spinning === false && r1.spinning === false && r2.spinning === false) {
    this.spinning = false;
    if (r0.curIndex === r1.curIndex && r1.curIndex === r2.curIndex) {
      this.gamesWon += 1;
      alert("You Win!")
    }
    else {
      alert("You Lose!")
    }
    this.updateScoreBoard();
  }
}

Slottoween.SlotMachine.prototype.updateScoreBoard = function() {
  this.gamesWonNode.innerHTML = this.gamesWon;
  this.totalGamesNode.innerHTML = this.totalGames;
}

var Spooky = Spooky || {};

Spooky.SlotMachine = function() {
  // I need to setup my eventListeners so that when hand is click
    // this will call the .start method
    mySlotMachine = this;
    this.handle = document.getElementsByClassName('handle')[0];
    this.handle.addEventListener("click", this.start);

    this.roller1 = new Roller(1);
    this.roller2 = new Roller(2);
    this.roller3 = new Roller(3);
  //  I need to setup my eventListeners so that when I click on the button
    // it tells the appropriate roller to stop
    //
    var button1 = document.getElementById('roller-1');
    button1.addEventListener("click", function(){
      mySlotMachine.stopRoller(1);

    });

    var button2 = document.getElementById('roller-2');
    button2.addEventListener("click", function(){
      mySlotMachine.stopRoller(2);
    });

    var button3 = document.getElementById('roller-3');
    button3.addEventListener("click", function(){
      mySlotMachine.stopRoller(3);
    });
    this.totalGames = 0;
    this.gamesWon = 0;



  };


  Spooky.SlotMachine.prototype.start = function() {
    console.log("started");
  // start a new session
  // clear out any properties I may not want
  // for each roller

  mySlotMachine.roller1.spin();
  mySlotMachine.roller2.spin();
  mySlotMachine.roller3.spin();
    // spin it
  mySlotMachine.parent().SoundBoard.playSpin();
  };



  Spooky.SlotMachine.prototype.stopRoller =  function(rollerNumber) {
  // stop the appropriate roller based on the rollerNumber
  rollerName = "roller" + rollerNumber;
  if(this[rollerName].spinning === true) {
    this[rollerName].stop();
  // I also want to check if all the other rollers have stopped, if they have
  if(!this.roller1.spinning && !this.roller2.spinning && !this.roller3.spinning){
    this.checkWinOrLose();
  }
}
    // check if I won or not and say "Win or Lose" appropriately
  };

  Spooky.SlotMachine.prototype.checkWinOrLose = function() {
  // determins if you have won or not and does the appropiate "messaging"
  var totalGames = document.getElementsByClassName("total-games")[0];
  var gamesWon = document.getElementsByClassName("games-won")[0];
  this.totalGames += 1;
  if(this.roller1.value == this.roller2.value == this.roller3.value) {
    alert("you won!");
    this.gamesWon += 1;
    gamesWon = this.gamesWon;
  }
  else {
    alert("you lose");
  }
  totalGames.textContent = this.totalGames;
};




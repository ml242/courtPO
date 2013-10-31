SlotMachine = function() {
  // I need to setup my eventListeners so that when hand is click
    // this will call the .start method
    this.handle = document.getElementsByClassName('handle')[0];
    this.handle.addEventListener("click", this.start);

    this.roller1 = new Roller(1);
    this.roller2 = new Roller(2);
    this.roller3 = new Roller(3);
  //  I need to setup my eventListeners so that when I click on the button
    // it tells the appropriate roller to stop
    //
    mySlotMachine = this;
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

  };


SlotMachine.prototype.start = function() {
  console.log("started");
  // start a new session
  // clear out any properties I may not want
  // for each roller
  this.roller1.spin();
  this.roller2.spin();
  this.roller3.spin();
  this.wheelsSpinning = 3;
    // spin it
  };



  SlotMachine.prototype.stopRoller =  function(rollerNumber) {
  // stop the appropriate roller based on the rollerNumber
  rollerName = "roller" + rollerNumber;
  this.rollerName.stop();
  this.wheelsSpinning -= 1;
  // I also want to check if all the other rollers have stopped, if they have
  if(this.wheelsSpinning === 0){
    this.checkWinOrLose();
  }
    // check if I won or not and say "Win or Lose" appropriately
  };

    SlotMachine.prototype.checkWinOrLose = function() {
  // determins if you have won or not and does the appropiate "messaging"
  if(this.roller1.value == this.roller2.value == this.roller3.value) {
    alert("you won!");
  }
  else {
    alert("you lose");
  }
};




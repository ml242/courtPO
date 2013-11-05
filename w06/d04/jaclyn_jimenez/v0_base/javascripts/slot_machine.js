alert("i am in the slot machine")

SlotMachine = function() {
  mySlotMachine = this;
  // I need to setup my eventListeners so that when hand is click
  this.handleNode = document.getElementById('handle')[0];
    //this will call the .start method
  this.handleNode.addEventListener("click", mySlotMachine.start);
  //rollers are set in the slot machine constructor
  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);
  //  I need to setup my eventListeners so that when I click on the button
    // it tells the appropriate roller to stop

    var button1 = document.getElementById('button1');
    var button2 = document.getElementById('button2');
    var button3 = document.getElementById('button3');

    button1.addEventListener("click", function() {
      mySlotMachine.stopRoller(1);
    })

    button2.addEventListener("click", function() {
      mySlotMachine.stopRoller(2);
    })

    button3.addEventListener("click", function() {
      mySlotMachine.stopRoller(3);
    })

}

// some event listener that when the hand is pulled
// it calls my .start method

SlotMachine.prototype.start = function() {
  console.log("Started!")
  // start a new session
  // clear out any properties I may not want
  // for each roller
    // spin it
    mySlotMachine.roller1.spin();
    mySlotMachine.roller2.spin();
    mySlotMachine.roller3.spin();
}

SlotMachine.prototype.stopRoller =  function(rollerNumber) {
  // stop the appropriate roller based on the rollerNumber
  console.log("Stopping roller " + rollerNumber)
  // I also want to check if all the other rollers have stopped, if they have
    // check if I won or not and say "Win or Lose" appropriately
  if (rollerNumber === 1) {
    var firstRoll = this.roller1.stop();
  };
  else if (rollerNumber === 2) {
    var secondRoll = this.roller2.stop();
  };
  else if (rollerNumber === 3) {
    var thirdRoll = this.roller3.stop();
  };

  // if (this.roller1.rolling == true && this.roller2.rolling == true && this.roller3.rolling == true && this.roller1.image == this.roller2.image && this.roller2.image == this.roller3.image) {
  //   alert("You Win")
  // } else
  //   alert("You Lose")
  // };
};

SlotMachine.prototype.checkWinOrLose = function() {
  // determins if you have won or not and does the appropiate "messaging"
}




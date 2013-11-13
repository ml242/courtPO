SlotMachine = function() {
  // I need to setup my eventListeners so that when hand is click
    // this will call the .start method

  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);

  var mySlotMachine = this;

  var handleNode = document.getElementById("handle");
  handleNode.addEventListener("click", function() {
    mySlotMachine.start();
  });

  var button1 = document.getElementById("button-1");
  button1.addEventListener("click", function() {
    mySlotMachine.stopRoller(1);
  });
  var button2 = document.getElementById("button-2");
  button2.addEventListener("click", function() {
    mySlotMachine.stopRoller(2);
  });
  var button3 = document.getElementById("button-3");
  button3.addEventListener("click", function() {
    mySlotMachine.stopRoller(3);
  })

  //trigger checkWinOrLose when all the buttons are pressed (check the state)


  //  I need to setup my eventListeners so that when I click on the button
    // it tells the appropriate roller to stop
    //

}

// some event listener that when the hand is pulled
// it calls my .start method

SlotMachine.prototype.start = function() {

  console.log("Started!")
  // start a new session

  //reset the class '' image back to 'hidden'
  //reset the curIndex



  // clear out any properties I may not want

  this.roller1.spin();
  this.roller2.spin();
  this.roller3.spin();

  // for each roller
    // spin it

}

SlotMachine.prototype.stopRoller =  function(rollerNumber) {

  console.log("Stopping roller " +  rollerNumber);
  // stop the appropriate roller based on the rollerNumber

  if (rollerNumber === 1) {
    this.roller1.stop();
  }
  else if (rollerNumber === 2) {
    this.roller2.stop();
  }
  else if (rollerNumber === 3) {
    this.roller3.stop();
  }

  if (this.roller1.rollingDone && this.roller2.rollingDone && this.roller3.rollingDone) {
    this.checkWinOrLose();
  }
  // Add the other ones later

  // I also want to check if all the other rollers have stopped, if they have
    // check if I won or not and say "Win or Lose" appropriately
}

SlotMachine.prototype.checkWinOrLose = function() {
  // determins if you have won or not and does the appropiate "messaging"
  if ((this.roller1.curIndex === this.roller2.curIndex) && (this.roller2.curIndex === this.roller3.curIndex)) {
    alert('You won');
  } else {
    alert('You lost');
  }
}




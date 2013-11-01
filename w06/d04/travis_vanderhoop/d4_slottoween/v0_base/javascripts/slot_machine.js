// this Method is used to instantiate a new SlotMachine object.

SlotMachine = function() {
  // I need to setup my eventListeners so that when hand is clicked
  // the .start method will be clicked

  var handleNode = document.getElementById("handle");
  handleNode.addEventListener("click", this.start);

  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);
  this.fates = new Array();

  // because I need to refer to call the slot machine's stopRoller() function from within a *nested* function,
  // I need to set a variable equal to 'this' (the slot machine), because within the nested function 'this' will refer to whatever directly holds it,
  // as opposed to the slot machine
  var mySlotMachine = this;

  // In the lines below I set my eventListeners to stop a particular roller
  // when that roller's partner button is clicked
  var button1 = document.getElementById("button-1");
  button1.addEventListener("click", function() {
    mySlotMachine.stopRoller(1);
  });

  var button2 = document.getElementById("button-2");
  button2.addEventListener("click", function(){
    mySlotMachine.stopRoller(2);
  });

  var button3 = document.getElementById("button-3");
  button3.addEventListener("click", function(){
    mySlotMachine.stopRoller(3);
  });

};

// some event listener that when the hand is pulled
// it calls my .start method

SlotMachine.prototype.start = function() {
  // start a new session
  console.log("Started!")
  // I'm instantiating an empty array whenever the lever is pulled. It will house the user's selections.
  // This array will be populated whenever someone presses a button.
  this.fates = [];
  // set all the rollers a'spinnin'
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

  // Add the other ones later

  // I also want to check if all the other rollers have stopped, if they have
    // check if I won or not and say "Win or Lose" appropriately
}

SlotMachine.prototype.checkWinOrLose = function() {
  // determins if you have won or not and does the appropiate "messaging"
  console.log('checking if you won or lost!');
  if (slotMachine.fates[0].src == slotMachine.fates[1].src && slotMachine.fates[0].src == slotMachine.fates[2].src) { alert('You won!');}
  else { alert('You lose, obviously!');}
  // resets the fates array so users can play again.
  slotMachine.fates = []
}




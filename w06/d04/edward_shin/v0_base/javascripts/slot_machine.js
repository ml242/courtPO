SlotMachine = function() {
  // I need to setup my eventListeners so that when hand is click
    // this will call the .start method

  var mySlotMachine = this;

  var handleNode = document.getElementById("handle");
  handleNode.addEventListener("click", function() {
  mySlotMachine.start();
  });

  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);

  var button1 = document.getElementById("button-1")
  button1.addEventListener("click", function() {
    mySlotMachine.stopRoller(1);
  });

  var button2 = document.getElementById("button-2")
  button2.addEventListener("click", function () {
    mySlotMachine.stopRoller(2);
  });

  var button3 = document.getElementById("button-3")
  button3.addEventListener("click", function (){
    mySlotMachine.stopRoller(3);
  });
  //  I need to setup my eventListeners so that when I click on the button
    // it tells the appropriate roller to stop
    //

}

// some event listener that when the hand is pulled
// it calls my .start method

SlotMachine.prototype.start = function() {
  console.log("Started!")
  // start a new session
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

  if (this.roller1.rolling === false && this.roller2.rolling === false && this.roller3.rolling === false) {
    this.checkWinOrLose()
  }
  // Add the other ones later

  // I also want to check if all the other rollers have stopped, if they have
    // check if I won or not and say "Win or Lose" appropriately
  }

  SlotMachine.prototype.checkWinOrLose = function() {
    if ((this.roller1.curIndex === this.roller2.curIndex) && (this.roller2.curIndex === this.roller3.curIndex) && (this.roller1.curIndex === this.roller3.curIndex)){
      alert("You Win!");
    } else {
      alert("You Lose")
    }
  }
  // determins if you have won or not and does the appropiate "messaging"





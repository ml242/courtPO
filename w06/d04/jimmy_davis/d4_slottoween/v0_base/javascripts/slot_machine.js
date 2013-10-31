SlotMachine = function() {
  // I need to setup my eventListeners so that when hand is click
    // this will call the .start method

  var handleNode = document.getElementById("handle");
  handleNode.addEventListener("click", this.start);

  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);

//    this.rollers = [];
//   for (var i=0; i<3; i++) {
//     var roller = new Slottoween.Roller(i);
//     this.rollers.push(roller);
//   }
// var roller1 = roller[0]
// var roller2 = roller[1]
// var roller3 = roller[2]


  var mySlotMachine = this;

for (var i = 0; i < 1; i++) {
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
  });
}



  //  I need to setup my eventListeners so that when I click on the button
    // it tells the appropriate roller to stop
    //
}

// some event listener that when the hand is pulled
// it calls my .start method

SlotMachine.prototype.start = function() {
  console.log("Started!");
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

  // Add the other ones later

  // I also want to check if all the other rollers have stopped, if they have
    // check if I won or not and say "Win or Lose" appropriately
}

SlotMachine.prototype.checkWinOrLose = function() {
  // determine if you have won or not and does the appropiate "messaging"
  if (roller1.curIndex === roller2.curIndex && roller2.curIndex === roller3.curIndex) {
    alert("You win!");
  } else {
    alert("You lose!");
  }
}

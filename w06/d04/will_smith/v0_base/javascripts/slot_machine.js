SlotMachine = function() {
  // I need to setup my eventListeners so that when hand is click
    // this will call the .start method

  var handleNode = document.getElementById("handle");
  handleNode.addEventListener("click", this.start);

  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);

  var SlotMachine = this;

  var button1 = document.getElementById("button-1");
  button1.addEventListener("click", function() {
    SlotMachine.stopRoller(1);
  });

  var button2 = document.getElementById("button-2");
  button2.addEventListener("click", function() {
    SlotMachine.stopRoller(2);
  });

  var button3 = document.getElementById("button-3");
  button3.addEventListener("click", function() {
    SlotMachine.stopRoller(3);
  });


  //  I need to setup my eventListeners so that when I click on the button
    // it tells the appropriate roller to stop
    //
};

// some event listener that when the hand is pulled
// it calls my .start method

SlotMachine.prototype.start = function() {
  console.log("Started!");
  // start a new session
  // clear out any properties I may not want
  var image1 = document.getElementById("gif1");
  image1.className = "";
  var image2 = document.getElementById("gif2");
  image2.className = "";
  var image3 = document.getElementById("gif3");
  image3.className = "";
  // for each roller
    // spin it
};

SlotMachine.prototype.stopRoller =  function(rollerNumber) {
  console.log("Stopping roller " +  rollerNumber);
  // stop the appropriate roller based on the rollerNumber

  if (rollerNumber === 1) {
    this.roller1.stop();
    var image1 = document.getElementById("gif1");
    image1.className = "hidden";
  }
  else if (rollerNumber === 2) {
    this.roller2.stop();
    var image2 = document.getElementById("gif2");
    image2.className = "hidden";
  }
  else if (rollerNumber === 3) {
    this.roller3.stop();
    var image3 = document.getElementById("gif3");
    image3.className = "hidden";
  }

  // Add the other ones later

  // I also want to check if all the other rollers have stopped, if they have
    // check if I won or not and say "Win or Lose" appropriately
};

SlotMachine.prototype.checkWinOrLose = function() {
  // determins if you have won or not and does the appropiate "messaging"
};




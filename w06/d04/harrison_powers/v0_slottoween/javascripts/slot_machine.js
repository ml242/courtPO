SlotMachine = function() {

  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);
  this.pushed = {
    1: false,
    2: false,
    3: false
  }

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
  });

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

SlotMachine.prototype.checkButtons = function() {
  if (this.roller1.spinning === false && this.roller2.spinning === false && this.roller3.spinning === false) {
    this.checkWinOrLose();
  }
}

SlotMachine.prototype.checkWinOrLose = function() {
  // determins if you have won or not and does the appropiate "messaging"

  winOrLose = document.getElementById('win-or-lose');
  winCount = parseInt(winOrLose.children[0].textContent);
  loseCount = parseInt(winOrLose.children[1].textContent);

  if ((this.roller1.curIndex === this.roller2.curIndex) && (this.roller2.curIndex === this.roller3.curIndex)) {
    setTimeout(function(){
      var audio = new Audio("audio/coin.wav");
      audio.play();
    }, 4000);
    var audio = new Audio("audio/win.wav");
    audio.play();
    winOrLose.children[0].textContent = winCount + 1
  } else {
    var audio = new Audio("audio/lose.wav");
    audio.play();
    winOrLose.children[1].textContent = loseCount + 1
  }
}

SlotMachine.prototype.stopRoller =  function(rollerNumber) {
  console.log("Button " +  rollerNumber + " pushed!");
  // stop the appropriate roller based on the rollerNumber

  if (rollerNumber === 1 && this.roller1.spinning === true) {
    this.roller1.stop();
    this.checkButtons();
  }
  else if (rollerNumber === 2 && this.roller2.spinning === true) {
    this.roller2.stop();
    this.checkButtons();
  }
  else if (rollerNumber === 3 && this.roller3.spinning === true) {
    this.roller3.stop();
    this.checkButtons();
  }
}


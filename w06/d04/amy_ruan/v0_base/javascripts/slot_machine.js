SlotMachine = function() {
  // this.rollers1 = document.getElementsById("roller-1");
  // this.rollers2 = document.getElementsById("roller-2");
  // this.rollers3 = document.getElementsById("roller-3");
  // can be set up as an array
  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);
  var mySlotMachine = this;

  var handleNode = document.getElementById("handle");
  handleNode.addEventListener("click", function() {
    mySlotMachine.start();
  });
  //we need this to anchor everything because
  //this can be referenced everywhere and it gets very
  //confusing.

  //we put the anonymous function because we don't want to
  // activate it right away. We just want to be able to call
  // upon it.
  var button1 = document.getElementById("button-1")
  button1.addEventListener("click", function() {
    mySlotMachine.stopRoller(1);
  })

  var button2 = document.getElementById("button-2")
  button2.addEventListener("click", function(){
    mySlotMachine.stopRoller(2);
  })

  var button3 = document.getElementById("button-3")
  button3.addEventListener("click",function(){
    mySlotMachine.stopRoller(3);
  })

  this.game_count = document.getElementById("total-games");
  this.win_count = document.getElementById("games-won");
  this.game_count.textContent = 0;
  this.win_count.textContent = 0;
  // I need to setup my eventListeners so that when hand is click
    // this will call the .start method
  //  I need to setup my eventListeners so that when I click on the button
    // it tells the appropriate roller to stop
    //
}

// some event listener that when the hand is pulled
// it calls my .start method

SlotMachine.prototype.start = function() {
  console.log("Started!")
  images = document.getElementsByClassName("unhidden");
  while(images.length){
    images[0].className = "hidden"
  }


  this.roller1.spin();
  this.roller2.spin();
  this.roller3.spin();

  this.game_count.textContent++
  // start a new session
  // clear out any properties I may not want
  // for each roller
    // spin it
}

SlotMachine.prototype.stopRoller = function(rollerNumber) {
  // stop the appropriate roller based on the rollerNumber
  if (rollerNumber === 1) {
    this.roller1.stop();
  }
  if (rollerNumber === 2) {
    this.roller2.stop();
  }
  if(rollerNumber === 3) {
    this.roller3.stop();
  }
   if (this.roller1.status == false && this.roller2.status == false &&
    this.roller3.status == false){this.checkWinOrLose();
  }
  // I also want to check if all the other rollers have stopped, if they have
    // check if I won or not and say "Win or Lose" appropriately
}

SlotMachine.prototype.checkWinOrLose = function() {
    images = document.getElementsByClassName("unhidden");
    if(images[0].src===images[1].src && images[1].src ===images[2].src){
      alert("you win")
      this.game_won.textContent++
    }
    else {
      alert("you lose!")
    }

  // determins if you have won or not and does the appropiate "messaging"
}




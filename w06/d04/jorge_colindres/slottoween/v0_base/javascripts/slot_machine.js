SlotMachine = function() {
  // I need to setup my eventListeners so that when hand is click
    // this will call the .start method

  var self = this;

  // This could be refactored
  this.roller1 = new Roller(1);
  this.roller2 = new Roller(2);
  this.roller3 = new Roller(3);

  this.totalGames = 0;
  this.wins = 0;

  var handleNode = document.getElementById("handle");
  handleNode.addEventListener("click", function(){
    self.start();
  });


  // These buttons should definitely be refactored
  var button1 = document.getElementById("button-1");
  button1.addEventListener("click", function() {
    self.stopRoller(1);
    self.checkWinOrLose();
  });

  var button2 = document.getElementById("button-2");
  button2.addEventListener("click", function() {
    self.stopRoller(2);
    self.checkWinOrLose();
  });

  var button3 = document.getElementById("button-3");
  button3.addEventListener("click", function() {
    self.stopRoller(3);
    self.checkWinOrLose();
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
  this.roller1.spin();
  this.roller2.spin();
  this.roller3.spin();
  // for each roller
    // spin it
};

SlotMachine.prototype.stopRoller =  function(rollerNumber) {
  console.log("Stopping roller " +  rollerNumber);
  // stop the appropriate roller based on the rollerNumber

  if (rollerNumber === 1) {
    this.roller1.stop();
    var images1 = document.getElementById('images-1').children;
    for (var i = 0; i < images1.length; i++) {
      var curImg = images1[i];
      if (curImg.className !== 'hidden'){
        this.img1 = curImg;
      }
    }
  }
  else if (rollerNumber === 2) {
    this.roller2.stop();
    var images2 = document.getElementById('images-2').children;
    for (var j = 0; j < images2.length; j++) {
      var curImg = images2[j];
      if (curImg.className !== 'hidden'){
        this.img2 = curImg;
      }
    }
  }
  else if (rollerNumber === 3) {
    this.roller3.stop();
    var images3 = document.getElementById('images-3').children;
    for (var k = 0; k < images3.length; k++) {
      var curImg = images3[k];
      if (curImg.className !== 'hidden'){
        this.img3 = curImg;
      }
    }
  }

  // Add the other ones later

  // I also want to check if all the other rollers have stopped, if they have
    // check if I won or not and say "Win or Lose" appropriately
};

SlotMachine.prototype.checkWinOrLose = function() {
  if(this.roller1.spinning === false && this.roller2.spinning === false && this.roller3.spinning === false) {
    if((this.img1.src === this.img2.src)&&(this.img1.src === this.img3.src)){
      alert('You win');
      this.wins ++;
      var gamesWonNode = document.getElementsByClassName('games-won')[0];
      gamesWonNode.textContent = this.wins;
    } else {
      alert('You lose');
    }
    this.totalGames ++;
    var totalGamesNode = document.getElementsByClassName('total-games')[0];
    totalGamesNode.textContent = this.totalGames;
  }
  // determins if you have won or not and does the appropiate "messaging"
};




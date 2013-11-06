function Timer() {
  this.count = 0;
}

Timer.prototype.tick = function() {
  this.count++;
  console.log(this.count);
  return this.count;
}

var timer = new Timer();
var ticker = function() { timer.tick(); }

// or call timer.tick in the context of timer not Window
//var ticker = function() { timer.tick.call(timer); }

setInterval(ticker, 1000);

function Timer() {
  this.count = 0;
}

Timer.prototype.tick = function() {
  this.count++;
  console.log(this.count);
  return this.count;
};

var timer = new Timer();

var timerFn = function() {
  timer.tick();
};

setInterval(timerFn, 1000);
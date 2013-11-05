function Timer() {
  this.count = 0;
}

Timer.prototype.tick = function() {
  this.count++;
  console.log(this.count);
  return this.count;
};

var timer = new Timer();
timer.tick();
// Make the timer, the one created on line 11, tick up every second by calling it's tick method
setInterval(timer.tick(), 1000);

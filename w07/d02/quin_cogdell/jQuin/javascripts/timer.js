function Timer() {
  this.count = 0;
}

Timer.prototype.tick = function() {
  this.count++;
  console.log(this.count);
  return this.count;
}

var timer = new Timer();



// setInterval calls the function
setInterval(function(){
  timer.tick()}, 1000);

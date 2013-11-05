function TimeCount() {
  this.count = 0;
}

TimeCount.prototype.increment = function() {
  //debugger
  this.count++;

  console.log(this.count);
}

var t1 = new TimeCount();
var t2 = new TimeCount();



setInterval(function(){
  t1.increment();
  t1.increment.call(t1)
}, 1000);

//setInterval(timer.increment, 1000);
//setInterval(timer.increment.call(timer), 1000);

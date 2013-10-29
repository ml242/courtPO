stops_n = ['times square', '34th', '28th', '23rd', 'union square', '8th']
stops_l = ['8th', '6th', 'union square', '3rd','1st']
stops_s = ['times square', '34th', '28th', '23rd', 'union square', '8th']

function Line(name,stops) {
  this.name = name;
  this.stops = stops;
}

function SubwaySystem(line1, line2, line3) {
  this.line1 = line1;
  this.line2 = line2;
  this.line3 = line3;


}

SubwaySystem.prototype.countStops = function(start,end) {
  this.start_stop = prompt("What is your starting stop?");
  this.end_stop = prompt("What is your ending stop?");

  var num_of_start = this.line1.stops.indexOf(this.start_stop)
  var num_of_end = this.line1.stops.indexOf(this.end_stop)
  var delta = Math.abs(num_of_end - num_of_start)
  console.log(delta);
  return delta
}


var n = new Line("N", stops_n);
var l = new Line("L", stops_l);
var s = new Line("S", stops_s);
var mta = new SubwaySystem(n, l, s);
var ans = mta.countStops('Times Square','8th');

console.log(ans)

stops_n = ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']
stops_l = ['8th', '6th', 'Union Square', '3rd','1st']
stops_s = ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']

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
  // this.line1
  // this.line2
  // this.start = start
  // this.end = end

  var num_of_start = this.line1.stops.indexOf(start)
  var num_of_end = this.line1.stops.indexOf(end)
  var delta = Math.abs(num_of_end - num_of_start)
  console.log(delta);
  return delta;
  }


var n = new Line("N", stops_n);
var l = new Line("L", stops_l);
var s = new Line("S", stops_s);
var mta = new SubwaySystem(n, l, s);
var ans = mta.countStops('Times Square','8th');

console.log(ans)

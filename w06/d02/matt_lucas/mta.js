// prompt the user for:
  // starting line
  // starting station
  // ending line
  // ending station
// bring up an alert that states the number of stops
// needed to make the trip

var n = ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'];
var l = ['8th', '6th', 'Union Square', '3rd','1st'];
var s = ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'];

function Line (name, stops) {
  this.name = name;
  this.stops = stops;
};

var nLine = new Line("N", n);
var lLine = new Line("L", l);
var sLine = new Line("S", s);

function SubwaySystem () {
  var startLine = prompt("starting line:");
  var startStation = prompt("starting station:");
  var endLine = prompt("ending line:");
  var endStation = prompt("ending station:");
  var lines = [];
}
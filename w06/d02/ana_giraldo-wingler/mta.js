var n = ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'];
var l = ['8th', '6th', 'Union Square', '3rd','1st'];
var s = ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'];

function Line (name, stops) {
  this.name = name;
  this.stops = stops;
};

SubwaySystem.prototype.getStops = function() {
  if (this[this.startLine] === this[this.endLine]) {
    var startIndex = this[this.startLine].stops.indexOf(this.startStation);
    var endIndex = this[this.endLine].stops.indexOf(this.endStation);
    return Math.abs(endIndex - startIndex);
  } else {
    var startIndex = this[this.startLine].stops.indexOf(this.startStation);
    var startUnionIndex = this[this.startLine].stops.indexOf("Union Square");
    var startUnionDiff = (startUnionIndex - startIndex);
    var endIndex = this[this.endLine].stops.indexOf(this.endStation);
    var endUnionIndex = this[this.endLine].stops.indexOf("Union Square");
    var endUnionDiff = (endUnionIndex - endIndex);
    return Math.abs(endUnionDiff - startUnionDiff);
  }
}

function SubwaySystem () {
  this["N"] = new Line("N", n);
  this["L"] = new Line("L", l);
  this["S"] = new Line("S", s);
  this.startLine = prompt("starting line:");
  this.startStation = prompt("starting station:");
  this.endLine = prompt("ending line:");
  this.endStation = prompt("ending station:");
}

var mySubway = new SubwaySystem ();
alert("You went " + mySubway.getStops() + " stops.");
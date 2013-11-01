function Line(name, stops) {
  this.name = name;
  this.stops = stops;
}

var startingLine = prompt("Starting line?");
var startingStation = prompt("Starting station?");
var endingLine = prompt("Ending line?");
var endingStation = prompt("Ending station?");

var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
var S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);


function SubwaySystem(startingLine, startingStation, endingLine, endingStation) {
  this.startingLine = startingLine;
  this.startingStation = startingStation;
  this.endingLine = endingLine;
  this.endingStation = endingStation;
  this.N = N;
  this.L = L;
  this.S = S;
}

SubwaySystem.prototype.getDistance = function(){
  line = this.startingLine;
  line2 = this.endingLine;
  if(line == line2) {
    index1 = this[line].stops.indexOf(this.startingStation);
    index2 = this[line].stops.indexOf(this.endingStation);
    console.log(Math.abs(index1 - index2));
  }
  else {
    index1 = this[line].stops.indexOf(this.startingStation);
    index2 = this[line].stops.indexOf('Union Square');
    index3 = this[line2].stops.indexOf('Union Square');
    index4 = this[line2].stops.indexOf(this.endingStation);
    distance = Math.abs(index1 - index2) + Math.abs(index3 - index4);
    console.log(distance);
  }
};

var sub = new SubwaySystem(startingLine, startingStation, endingLine, endingStation);
sub.getDistance();
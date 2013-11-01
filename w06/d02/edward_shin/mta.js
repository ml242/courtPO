function SubwaySystem(){
  this.lines = {};
}

function Line(name, stops){
  this.name = name;
  this.stops = stops;
}

SubwaySystem.prototype.singleLine = function(startingLine,startingStation, endingStation) {
  var begins = this.lines[startingLine].stops.indexOf(startingStation);
  var ends = this.lines[startingLine].stops.indexOf(endingStation);
  var stops = Math.abs(begins-ends);
  return stops;
}

SubwaySystem.prototype.twoLine = function() {
  var startingLine = prompt("What is your starting starting line?");
  var startingStation = prompt("What is your starting station?");
  var endingLine = prompt("What is your ending line?");
  var endingStation = prompt("What is your ending station?");
  var firstNum = this.singleLine(startingLine, startingStation, "Union Square");
  var secondNum = this.singleLine(endingLine, "Union Square", endingStation);
  var stops = firstNum + secondNum;
  var message = "Your total Number of stops are " + stops + "!";
  alert(message)
  return stops;
}

var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
var S = new Line('S', ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]);

s1 = new SubwaySystem();

s1.lines['N'] = N;
s1.lines['L'] = L;
s1.lines['S'] = S;

s1.twoLine();
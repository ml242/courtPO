function Line(name, stops) {
  this.name = name;
  this.stops = [];
}

TrainLines = {
  n: "Times Square, 34th, 28th, 23rd, Union Square, 8th".split(", "),
  l: "8th, 6th, Union Square, 3rd, 1st".split(", "),
  s: "Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place".split(", ")
}

// not as clear how to iterate through this
// so I just used the above hash

// var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
// var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
// var S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);

function SubwaySystem() {
}

var startLine = prompt("What line are you getting on at?");
var startStation = prompt("At which station?");
var endLine = prompt("What line are you getting off at?");
var endStation = prompt("At which station?");


var startingLineArray = TrainLines[startLine];
var startingIndex = startingLineArray.indexOf(startStation);
var endingLineArray = TrainLines[endLine];
var endingIndex = endingLineArray.indexOf(endStation);
var distance = endingIndex - startingIndex;
console.log(distance);


console.log("You will be traveling for " + distance + " stops.");


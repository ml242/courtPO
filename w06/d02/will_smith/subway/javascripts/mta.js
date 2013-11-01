function SubwaySystem() {
    this.lines = {};
    this.startLine = prompt("What train are you getting on?\nEnter N, L, or S");
    this.startStation = prompt("Which station?\nHere are the options:\nN: Times Square, 34th, 28th, 23rd, Union Square, 8th\nL: 8th, 6th, Union Square, 3rd, 1st\nS: Times Square, 34th, 28th, 23rd, Union Square, 8th");
    this.endLine = prompt("What train are you geting off?\nEnter N, L, or S");
    this.endStation = prompt("Which station?\nHere are the options:\nN: Times Square, 34th, 28th, 23rd, Union Square, 8th\nL: 8th, 6th, Union Square, 3rd, 1st\nS: Times Square, 34th, 28th, 23rd, Union Square, 8th");

}

function Line(trainName, stations){
  this.trainName = trainName;
  this.stations = stations;
}

var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
var S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);

var s1 = new SubwaySystem();

s1.lines.N = N;
s1.lines.L = L;
s1.lines.S = S;

function calcStopsToUnionSquare(line, station){
  var stations = s1.lines[line];
  var startIndex = stations.stations.indexOf(station);
  var endIndex = stations.stations.indexOf('Union Square');
  var delta = endIndex - startIndex;
  return Math.abs(delta);
}

if (s1.startLine === s1.endLine){
  var stations = s1.lines[s1.startLine];
  var startIndex = stations.stations.indexOf(s1.startStation);
  var endIndex = stations.stations.indexOf(s1.endStation);
  var delta = endIndex - startIndex;
  alert('It takes ' + Math.abs(delta) + ' stops to get from ' + s1.startStation + ' street to ' + s1.endStation + ' street');
} else {
  var delta1 = calcStopsToUnionSquare(s1.startLine, s1.startStation);
  var delta2 = calcStopsToUnionSquare(s1.endLine, s1.endStation);
  var delta = delta1 + delta2;
  alert('it takes ' + delta + ' stops to get from the ' + s1.startStation + ' street ' + s1.startLine + ' station to the ' + s1.endStation + ' street ' + s1.endLine + ' station.');
}






function SubwaySystem(){
  this.lines = {};
  this.startLine = prompt('What line do you want to start at?');
  this.startStation = prompt('What station do you want to start at?');
  this.endLine = prompt('What line do you want to end at?');
  this.endStation = prompt('What station do you want to end at?');
}
function Line(name, stations){
  this.name = name;
  this.stations = stations;
}

var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
var S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);

var SS = new SubwaySystem();

SS.lines.N = N;
SS.lines.L = L;
SS.lines.S = S;

function findStopsToUnionSquare(line, station){
  var stations = SS.lines[line];
  var startIndex = stations.stations.indexOf(station);
  var endIndex = stations.stations.indexOf('Union Square');
  var delta = endIndex - startIndex;
  return Math.abs(delta);
}

if (SS.startLine === SS.endLine){
  var currentLine = SS.lines[SS.startLine];
  var startIndex = currentLine.stations.indexOf(SS.startStation);
  var endIndex = currentLine.stations.indexOf(SS.endStation);
  var delta = endIndex - startIndex;
  alert(Math.abs(delta) + ' stops!');
} else {
  var delta1 = findStopsToUnionSquare(SS.startLine, SS.startStation);
  var delta2 = findStopsToUnionSquare(SS.endLine, SS.endStation);
  var delta = delta1 + delta2;
  alert(delta + ' stops!');
}





function Line (name, stops_array) {
  this.stops_array = stops_array
}
Line.prototype.calcDistance = function(starting, ending) {
  sIndex = this.stops_array.indexOf(starting)
  eIndex = this.stops_array.indexOf(ending)
  return Math.abs( sIndex-eIndex);
}
function System () {
}
System.prototype.calcDistance = function(sLine, sStop, eLine, eStop) {
  if (sLine==eLine) {
    return sLine.calcDistance(sStop, eStop)
  } else {
    bTran = sLine.calcDistance(sStop, "Union Square")
    aTran = eLine.calcDistance("Union Square", eStop)
    return bTran+aTran
  }
}

var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
var S = new Line('S', ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]);

var system = new System();

//console.log(System.calcDistance(N, "34th", S, "33rd"))

var sLine = prompt("choose first line"),
    sStop = prompt("choose first stop"),
    eLine = prompt("choose last line"),
    eStop = prompt("choose last stop");

switch(eLine) {
  case 'N':
    eLine = N;
    break;
  case 'S':
    eLine = S;
    break;
  case 'L':
    eLine = L;
    break;
  default:
    false
}

switch(sLine) {
  case 'N':
    sLine = N;
    break;
  case 'S':
    sLine = S;
    break;
  case 'L':
    sLine = L;
    break;
  default:
    false
}

console.log(system.calcDistance(sLine, sStop, eLine, eStop))

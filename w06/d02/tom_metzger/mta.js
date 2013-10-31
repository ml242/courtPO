// what is a subway trip?

// prompt user for
  // start station
  // start line
  // end station
  // end line



// GOAL:  alert indicating number of stops to destination


// the subway nework has lines
  // a line has:
    // name
    // array of stops


// subwaySystem.addLine()

// function SubwaySystem() {

// }

// SubwaySystem.prototype.addLine = function(name, stations) {
//   this.line = new Line(name, stations);
//   console.log(line);
// }

// TO DO----  be able to add lines to the SubwaySystem


function Line(name, stations) {
  this.name = name;
  this.stations = stations;
}

// Line.prototype.startLine = function()

var n = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var l = new Line ("L", ['8th', '6th', 'Union Square', '3rd', '1st']);
var s = new Line ("Six", ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']);


var stationLocation = function(station) {
  return n.stations.indexOf(station);
}

var getInfo = function(question) {
  return prompt(question);
}

// var startStation = getInfo("What station will you leave from?");
// var endStation = getInfo("What station are you going to?");

// // create a function to return the difference between 2 stations
//   // find position of first station
//     // var start = n.stations.indexOf("34th");
//     var start = stationLocation(startStation);
//   // find position of second station
//     // var end = n.stations.indexOf("8th");
//     var end = stationLocation(endStation);
//   // get the absolute value of the difference between the two stations
//   var distance = Math.abs(start - end);

// alert("This trip is " + distance + " stops long.");

var tripCalc = function(){
  var startStation = getInfo("What station will you leave from?");
  var startLine = getInfo("what line will you take?");
  var endStation = getInfo("What station are you going to?");
  var endLine = getInfo("What line is " + endStation + " on?");
  var start = stationLocation(startStation);
  var end = stationLocation(endStation);
  var distance = Math.abs(start - end);
  alert("This trip is " + distance + " stops long.");
}

tripCalc();



var lines = {
  l: ["8th", "6th", "Union Square", "3rd", "1st"],
  n: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  6: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
  xSect: "Union Square"
}
// var Line = function (line, station_array){
//   debugger;
//   this.setLines(line, station_array);
// }

// Line.prototype.setLines = function setLines(line, station_array)  {
//   debugger;
//   this.line = station_array;
// }

var MTA = function(){
}

MTA.prototype.findRoute = function findRoute(){
  if (this.startLine === this.stopLine) {
    this.delta = this.calcDistance(this.startLine, this.startStation, this.stopStation);
  } else {
    var stopsBeforeXfer = this.calcDistance(this.startLine, this.startStation, lines.xSect);
    var stopsAfterXfer = this.calcDistance(this.stopLine, lines.xSect, this.stopStation);
    this.delta = stopsBeforeXfer + stopsAfterXfer;
  }
}

MTA.prototype.ask = function ask(question){
  return prompt(question);
}

MTA.prototype.setLocations = function setLocations(locations) {
  this.startLine = locations[0];
  this.startStation = locations[1];
  this.stopLine = locations[2];
  this.stopStation = locations[3];
}

MTA.prototype.calcDistance = function calcDistance(line, startStation, stopStation) {
  var stations = lines[line];
  var start = this.findIndex(stations, startStation);
  var stop = this.findIndex(stations, stopStation);
  return (Math.abs(stop - start));
}

MTA.prototype.findIndex = function findIndex(array, station) {
  for (var index = 0; index < array.length; index++) {
    if (station === array[index]) {
      return index;
    }
  }
}

MTA.prototype.tell = function tell(response){
  return alert(response)
}

// var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
// var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
// var S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);


var totalTrips = 0;

while (confirm("Find Directions?")) {
  var locations = [];
  var mta = new MTA();

  locations.push(mta.ask("What line are you getting on at: "));
  locations.push(mta.ask("Which station: "));
  locations.push(mta.ask("What line are you getting off at: "));
  locations.push(mta.ask("and which station: "));

  mta.setLocations(locations);
  mta.findRoute()
  mta.tell("It takes " + mta.delta + " stops to get from " + mta.startStation + " on the " + mta.startLine + " to " + mta.stopStation + " on the " + mta.stopLine + ".");
  totalTrips++;
  mta.tell("You have taken " + totalTrips + " trips, totaling: $" + (totalTrips*2.5));
}



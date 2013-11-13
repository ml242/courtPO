var Line = function(name, stops) {
  this.name = name;
  this.stops = stops;
}

var SubwaySystem =  function() {
  this.n = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
  this.l = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
  this.r = new Line('R', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
};
var SubwayApp = function() {
  this.subwaySystem = new SubwaySystem();
}
SubwayApp.prototype.getItinerary = function() {
  startLineString = prompt("What line are you starting on?").toUppercase();
  this.startLine = this[startLineString];
  startStopString = prompt("What station are you starting at?").toUppercase();
  this.startStop = this[startStopString];
  endLineString = prompt("What line are you ending on?").toUppercase();
  this.startLine = this[endLineString];
  endStopString = prompt("What station are you ending at?").toUppercase();
  this.startStop = this[endStopString];
};

    // var numStops = this.startLine.stops.indexOf(startStop) - this.startLine.stops.indexOf(endStop);

SubwaySystem.prototype.calculateStops = function() {
  if (this.startLine != this.endLine) {
    var stops_line1 = startLine.stops.indexOf(this.startStop) - this.startLine.stops.indexOf("Union Square");
    var stops_line2 = this.endLine.stops.indexOf(endLine) - this.endLine.stops.indexOf("Union Square");
    var stops = Math.abs(stops_line1) + Math.abs(stops_line2) - 1;
    return stops;
  }
  else {
    return this.startLine.calculateStops(startStop, endStop);
  }
}

var mta = new SubwayApp;
startLine = mta.getItinerary();
endline = mta.getItinerary();
alert("Your trip will take " + mta.calculateStops() + " stops.");

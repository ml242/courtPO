var Line = function(name, stops) {
  this.name = name;
  this.stops = stops;
}

var SubwaySystem =  function() {
  this.N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
  this.L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
  this.R = new Line('R', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
};

SubwaySystem.prototype.getStart = function() {
  startLine = prompt("What line are you starting on?");
  switch (startLine) {
  case "N" :
    startLine = this.N;
    break;
  case "R" :
    startLine = this.R;
    break;
  case "L" :
    startLine = this.L;
    break;
  }
  startStop = prompt("What station are you starting at?");
};

SubwaySystem.prototype.getEnd = function() {
  endLine = prompt("What line are you ending on?");
  switch (endLine) {
  case "N" :
    endLine = this.N;
    break;
  case "R" :
    endLine = this.R;
    break;
  case "L" :
    endLine = this.L;
    break;
  }
  endStop = prompt("What station are you ending at?");
};

SubwaySystem.prototype.calculateStops = function() {
  if (startLine != endLine) {
    var stops_line1 = startLine.stops.indexOf(startStop) - startLine.stops.indexOf("Union Square");
    var stops_line2 = endLine.stops.indexOf(endLine) - endLine.stops.indexOf("Union Square");
    var stops = Math.abs(stops_line1) + Math.abs(stops_line2) - 1;
    return stops;
  }
  else {
    stop_number = startLine.stops.indexOf(startStop) - startLine.stops.indexOf(endStop);
    var stops = Math.abs(stop_number);
    return stops;
  }
}

var mta = new SubwaySystem;
mta.getStart();
mta.getEnd();
alert("Your trip will take " + mta.calculateStops() + " stops.");

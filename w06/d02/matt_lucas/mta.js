for(i=0;i<10;i++) {
  console.log("you have taken " + i + " trips.");


// prompt the user for:
  // starting line
  // starting station
  // ending line
  // ending station
// bring up an alert that states the number of stops
// needed to make the trip

function Line (name, stops) {
  this.name = name;
  this.stops = stops;
};

function SubwaySystem () {
  this.lines = {}
};

var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
    L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
    S = new Line('S', ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']);

mySubway = new SubwaySystem();

mySubway.lines["N"] = N;
mySubway.lines["S"] = S;
mySubway.lines["L"] = L;


SubwaySystem.prototype.getInfo = function() {
  this.startLine = prompt("starting line:");
  this.startStop = prompt("starting station:");
  this.endLine = prompt("ending line:");
  this.endStop = prompt("ending station:");
};

// SubwaySystem.prototype.getStops = function() {
//   startIndex = mySubway.lines[this.startLine].stops.indexOf(this.startStop);
//   endIndex = mySubway.lines[this.endLine].stops.indexOf(this.endStop);
//   var numStops = Math.abs(endIndex - startIndex);
//   console.log(numStops)
//   return numStops
// };

SubwaySystem.prototype.getStops = function() {
    var startIndex = mySubway.lines[this.startLine].stops.indexOf(this.startStop);
    var endIndex = mySubway.lines[this.endLine].stops.indexOf(this.endStop);
    if (this.startLine === this.endLine) {
      var numStops = Math.abs(endIndex - startIndex);
      console.log(numStops);
      return numStops;
    } else {
      var transferIndex = mySubway.lines[this.startLine].stops.indexOf("Union Square");
      var transferIndexTwo = mySubway.lines[this.endLine].stops.indexOf("Union Square");
      var numStops = Math.abs(startIndex - transferIndex) + (endIndex - transferIndexTwo);
      console.log(numStops);
      return numStops;
    };
};


mySubway.getInfo();
alert(mySubway.getStops());

}

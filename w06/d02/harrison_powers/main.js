function Line(name, stops) {
  this.name = name;
  this.stops = stops;
};

function SubwaySystem(lineObject) {
  this.lines = lineObject;
  var startLine,
      startStop,
      endLine,
      endStop;
};

SubwaySystem.prototype.calculateDistance = function() {

  // Finding the index of the user's inputs
  var startIndex = this.lines[this.startLine].stops.indexOf(this.startStop),
      endIndex = this.lines[this.endLine].stops.indexOf(this.endStop);

  // Return the calculated distance
  return (Math.abs(endIndex - startIndex));
};

// Creating The Subway Lines
var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']),
    L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']),
    S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);

// Creating the NYC MTA Subway System
var nycMTA = new SubwaySystem({
  'N': N,
  'L': L,
  'S': S
});

// Setting up seed user inputs for dev
// nycMTA.startLine = 'N';
// nycMTA.startStop = 'Times Square';
// nycMTA.endLine = 'S';
// nycMTA.endStop = '8th';

nycMTA.startLine = prompt('Which subway line are you getting on? [N, L, or S]'),
nycMTA.startStop = prompt('What stop are you getting on?'),
nycMTA.endLine = prompt('Which subway line will you end up at? [N, L, or S]'),
nycMTA.endStop = prompt('What stop are you getting off?');

alert('Your trip will have ' + nycMTA.calculateDistance() + ' stops.');

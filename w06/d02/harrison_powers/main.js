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
  var numStops,
      startIndex = this.lines[this.startLine].stops.indexOf(this.startStop),
      endIndex = this.lines[this.endLine].stops.indexOf(this.endStop);

  if (this.startLine === this.endLine) {

    // Sets the number of stops as the difference between the stops
    numStops = Math.abs(endIndex - startIndex);

  } else {

    // Finds the index of the transfers
    var startTransferIndex = this.lines[this.startLine].stops.indexOf('Union Square'),
        endTransferIndex = this.lines[this.endLine].stops.indexOf('Union Square');

    //Sets the number of stops as the difference between the stops and the transfers
    numStops = ( Math.abs(startTransferIndex - startIndex) + Math.abs(endTransferIndex - endIndex) )
  };

  // Return the calculated distance
  return numStops;
};

// Creates The Subway Lines
var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']),
    L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']),
    S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);

// Creates the NYC MTA Subway System
var nycMTA = new SubwaySystem({
  'N': N,
  'L': L,
  'S': S
});

// Seed user inputs for dev env
// nycMTA.startLine = 'N';
// nycMTA.startStop = 'Times Square';
// nycMTA.endLine = 'S';
// nycMTA.endStop = '8th';

var choice = 'go',
    numJourneys = 0,
    totalCost = 0;

while (choice === 'go') {
  nycMTA.startLine = prompt('Which subway line are you getting on? [N, L, or S]'),
  nycMTA.startStop = prompt('What stop are you getting on?'),
  nycMTA.endLine = prompt('Which subway line will you end up at? [N, L, or S]'),
  nycMTA.endStop = prompt('What stop are you getting off?');

  alert('Your trip will have ' + nycMTA.calculateDistance() + ' stops.');

  numJourneys += 1;
  totalCost += 2.5;
  choice = prompt('to keep going type "go"')
}

alert('You took ' + numJourneys + ' subway rides, costing you $' + totalCost)

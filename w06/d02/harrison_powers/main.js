function Line(name, stops) {
  var name = name,
      stops = stops;
};

function SubwaySystem(lineArray) {
  var lines = lineArray,
      startLine,
      startStop,
      endLine,
      endStop;
};

SubwaySystem.prototype.calculateDistance = function() {

}

var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']),
    L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']),
    S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);

var nycMTA = new SubwaySystem([N, L, S]);

nycMTA.startLine = prompt('Which subway line are you getting on? [N, L, or S]'),
nycMTA.startStop = prompt('What stop are you getting on?'),
nycMTA.endLine = prompt('Which subway line will you end up at? [N, L, or S]'),
nycMTA.endStop = prompt('What stop are you getting off?');

alert('Your trip will have ' + nycMTA.calculateDistance + ' stops.');

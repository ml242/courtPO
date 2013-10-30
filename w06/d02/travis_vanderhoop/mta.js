// var SubwaySystem = function() {
//     var LINES = {}
// }

var LINES = {},
    Line = function(key, value) {
      LINES[key] = value
    }

var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']),
    L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']),
    S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);

var startLine = prompt("What line are you getting on?").toUpperCase(),
    startStop = prompt("What stop are you getting on?"),
    endLine = prompt("What line are you getting off from?").toUpperCase(),
    endStop = prompt("What stop are you getting off at?");

// refactoring and index values for use in subtraction later on
var startingLineStopsArray = LINES[startLine],
    startingIndex = startingLineStopsArray.indexOf(startStop),
    endingLineStopsArray = LINES[endLine],
    endingIndex = endingLineStopsArray.indexOf(endStop);

// to get the distance from a user's starting or departure stop, subtract the index value
// of that stop from the index value of Union Square for that train. Then convert to an absolute value.
var calcDistanceToUnionSquare = function(trainStopArray, otherStopIndex) {
  var unionSquareIndex = trainStopArray.indexOf("Union Square"),
      stopsToUnionSquare = Math.abs(unionSquareIndex-otherStopIndex);
  return stopsToUnionSquare;
};

  // to find the distance between two stops on the same line, you need to subtract the first value from the second, and convert the result to an absolute number.
if (LINES[startLine]==LINES[endLine]) {
  var distanceBetweenStops = Math.abs(startingIndex-endingIndex);
}
else {
  var distanceBetweenStops = calcDistanceToUnionSquare(startingLineStopsArray, startingIndex) + calcDistanceToUnionSquare(endingLineStopsArray, endingIndex);
}

var log1String="You're getting on at the " + startStop + " stop on the " + startLine + "."
var log2String="You're getting off at the " + endStop + " stop on the " + endLine + "."

console.log(log1String);
console.log(log2String);
console.log("Your ride will be " + distanceBetweenStops + " stops long");

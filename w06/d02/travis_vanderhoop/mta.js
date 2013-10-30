LINES = {
  n: "Times Square, 34th, 28th, 23rd, Union Square, 8th".split(", "),
  l: "8th, 6th, Union Square, 3rd, 1st".split(", "),
  6: "Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place".split(", ")
};

var startLine= prompt("What line are you getting on?");
var startStop= prompt("What stop are you getting on?");
var endLine= prompt("What line are you getting off from?");
var endStop= prompt("What stop are you getting off at?");

var startingLineStopsArray = LINES[startLine]; //refactoring and index values for use in subtraction later on
var startingIndex = startingLineStopsArray.indexOf(startStop);
var endingLineStopsArray = LINES[endLine];
var endingIndex = endingLineStopsArray.indexOf(endStop);

var calcDistanceToUnionSquare = function(trainStopArray, otherStopIndex) { //to get the distance from a user's starting or departure stop, subtract the index value of that stop from the index value of Union Square for that train. Then convert to an absolute value.
  var unionSquareIndex=trainStopArray.indexOf("Union Square");
  var stopsToUnionSquare = Math.abs(unionSquareIndex-otherStopIndex);
  return stopsToUnionSquare;
};
  //to find the distance between two stops on the same line, you need to subtract the first value from the second, and convert the result to an absolute number.
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
console.log("You're ride will be " + distanceBetweenStops + " stops long");

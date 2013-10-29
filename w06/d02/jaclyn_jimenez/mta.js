// 3 lines
// prompt the user what line they're starting from
// prompt user for starting station
// prompt user for ending line
// prompt user for end station
// bring up alert that states number of stops needed to make the trip
// first do it for number of stops in one line
// create function that calculates number of stops

function Line(lineStops) {
  this.stops = lineStops
};

Line.prototype.calculate_number_of_stops = function(stop1, stop2) {
  var start_station = this.stops.indexOf(stop1) //finds index of first stop
  var final_station = this.stops.indexOf(stop2)
  return Math.abs(start_station - final_station)
}

Line.prototype.calculate_transfers_of_stops = function() {
  //code for function
}
// startLine = prompt("What line are you starting from?")
firstStop = prompt("What stop are you getting on?")
finalStop = prompt("What stop are you getting off?")

var nLine = new Line(["timesSquare", "34th", "28thN", "23rdN", "unionSquare", "8thN"]);

console.log(nLine.stops)
console.log(nLine.calculate_number_of_stops(firstStop, finalStop))



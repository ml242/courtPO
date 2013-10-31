//constructor function
function Line(lineStops) {
  this.stops = lineStops
};

//functions
Line.prototype.calculate_number_of_stops = function(stop1, stop2) {
  return Math.abs(stop1 - stop2)
}

Line.prototype.calculate_transfers_of_stops = function(stop1, transfer1, stop2, transfer2) {
  first_ride = Math.abs(stop1 - transfer1)
  second_ride = Math.abs(stop2 - transfer2)
  return first_ride + second_ride
}

//subway lines
var nycLines = new Line({nLine: ["timesSquare", "34th", "28thN", "23rdN", "unionSquare", "8thN"],
  sixLine: ["grandCentral", "33rd", "28th6", "23rd6", "unionSquare", "astorPlace"],
  lLine: ["8thL", "6th", "unionSquare", "3rd", "1st"]
  }
);

//prompts
startLine = prompt("What line are you starting from?(nLine, sixLine, lLine)")
firstStop = prompt("What stop are you getting on?")
endLine = prompt("What line are you getting off? (nLine, sixLine, lLine)")
finalStop = prompt("What stop are you getting off?")

//variables
firstStop = nycLines.stops[startLine].indexOf(firstStop)
transfer1 = nycLines.stops[startLine].indexOf("unionSquare")
finalStop = nycLines.stops[endLine].indexOf(finalStop)
transfer2 = nycLines.stops[endLine].indexOf("unionSquare")

//runs everything
total_stops = (nycLines.calculate_transfers_of_stops(firstStop, transfer1, finalStop, transfer2))
alert("You will travel " + total_stops + " stops!")



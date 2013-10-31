TRAIN_LINES = {
  n: "Times Square, 34th, 28th, 23rd, Union Square, 8th".split(", "),
  l: "8th, 6th, Union Square, 3rd, 1st".split(", "),
  s: "Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place".split(", ")
}

function SubwaySystem () {
}

SubwaySystem.prototype.askUser = function() {
  var start_line = prompt("What is your starting line?");
  var start_station = prompt("What is your starting station?");
  var end_line = prompt("What is your end line?");
  var end_station = prompt("What is your ending station?");

  route = {
    start_line: start_line,
    start_station: start_station,
    end_line: end_line,
    end_station: end_station
  };
  //var route = {start_line: "n", start_station: "Time Square", end_line: "l", end_station: "3rd"};
  console.log(route);

  var total_stops = this.routeUserInput(route);
  console.log(total_stops)
  var message = "Your ride has a total of " + total_stops + " stops. "
  alert(message)
  return total_stops
}


SubwaySystem.prototype.routeUserInput = function(userInput) {
  //debugger
  var i = userInput

  //assumes this is the only place to change trains
  var transfer = "Union Square"
  if (i.start_line === i.end_line) {
    var total_stops = this.calcStopsSingleLine(i.start_station, i.end_station, i.start_line);
    return Math.abs(total_stops);
  } else {
    var firstRide = this.calcStopsSingleLine(i.start_station, transfer, i.start_line);
    var secondRide = this.calcStopsSingleLine(transfer, i.end_station, i.end_line);
    console.log(firstRide, secondRide)
    var total_stops = Math.abs(firstRide) + Math.abs(secondRide);
    return total_stops;
  }
}

SubwaySystem.prototype.calcStopsSingleLine = function(start, end, line) {
  //debugger
  stations = TRAIN_LINES[line];
  start = stations.indexOf(start);
  end = stations.indexOf(end);
  num_stops = end - start;
  console.log(num_stops);
  return num_stops;
}

s1 = new SubwaySystem();
s1.askUser()

//s1.calcStopsSingleLine('8th', '3rd', 'l')

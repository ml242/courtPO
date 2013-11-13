stops_n = ['times square', '34th', '28th', '23rd', 'union square', '8th']
stops_l = ['8th', '6th', 'union square', '3rd','1st']
stops_s  = ["astor place", "union square", "28th", "33th","grand central"]

function Line(name,stops) {
  this.name = name;
  this.stops = stops;
}

function SubwaySystem(line1, line2, line3) {
  this.line1 = line1;
  this.line2 = line2;
  this.line3 = line3;

}

SubwaySystem.prototype.countStops = function(start,end) {
  this.start_stop = prompt("What is your starting stop?").toLowerCase();
  this.end_stop = prompt("What is your ending stop?").toLowerCase();


  var line_start = prompt("What is your starting line?").toUpperCase();
  var line_end= prompt("What is your ending line?").toUpperCase();

  var a = Object.keys(this);

  for (var i = 0; i < a.length; i++) {
    var el = a[i];
    if(line_start == this[el].name){
    var new_line_start = [el][0];
    }
    if(line_end == this[el].name){
    var new_line_end = [el][0];
    }
  };

  var start_line_stops = this[new_line_start].stops;
  var end_line_stops = this[new_line_end].stops;


  console.log(intersection)
    if (new_line_end != new_line_start) {
    var total_intersection = start_line_stops.filter(
    function(value) {
      return end_line_stops.indexOf(value) > -1;
    })



    var start = start_line_stops.indexOf(this.start_stop);
    var intersection_start = start_line_stops.indexOf(total_intersection[0]);
    var start_delta = Math.abs(intersection_start - start);

    var end = end_line_stops.indexOf(this.end_stop);
    var intersection_end = end_line_stops.indexOf(total_intersection[0]);
    var end_delta = Math.abs(intersection_end - end);

    var total_delta = end_delta + start_delta;
    console.log(total_delta);
    return total_delta
  }
  else {
    var start = start_line_stops.indexOf(this.start_stop)
    var end = end_line_stops.indexOf(this.end_stop)
    var delta = Math.abs(end - start)
    console.log(delta);
    return delta
  }
}


var n = new Line("N", stops_n);
var l = new Line("L", stops_l);
var s = new Line("S", stops_s);
var mta = new SubwaySystem(n, l, s);
var ans = mta.countStops('Times Square','8th');

console.log("Your travel will take " + ans + " stops")

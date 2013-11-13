//this is the constructor function
function Line(trainName, stations){
  this.trainName = trainName;
  this.stations = stations;
}

function subwaySystem(startingLine,startingStation, endingLine, endingStation) = {

    this.startingLine = prompt("What train are you getting on?");
    this.startingStation = prompt("Which station?");
    this.endingLine = prompt("What train are you geting off?");
    this.endingStation = prompt("Which station?");
}


Line.prototype.alert = function (){
  return "The " + this.trainName + " is leaving the station. Stand clear of the closing doors."
}


var N = new Line('N', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var L = new Line('L', ['8th', '6th', 'Union Square', '3rd','1st']);
var S = new Line('S', ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);

//this is a function declaration, where we pass in the train object and the
//train name
function findIndex(train, stationName){
  for(var i = 0; i < train.stations.length; i++){
    if (train.stations[i] == stationName) {
      console.log(i)
    };
  }
}

findIndex( N, "Union Square")

//this is a method on a prototype where we just need to pass in one argument
//we pass in one because it already knows about the other objects,
//it is being called within the line object

Line.prototype.findIndex = function(stationName){
  for(var i = 0; i < this.stations.length; i++){
    if (this.stations[i] == stationName) {
      console.log(i)
    };
  }
}

N.findIndex( '34th')

if (startingLine == endingLine) {
  var numStops = Math.abs(findIndex(startingStation) - findIndex(endingStation));
    }
else {
  Math.abs(findIndex(startionStation) - findIndex("Union Square")) + Math.abs(findIndex(endingStation) - findIndex("Union Square"));
}
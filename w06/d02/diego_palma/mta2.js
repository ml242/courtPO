//this is the constructor function
function Line(trainName, stations){
  this.trainName = trainName;
  this.stations = stations;
}


//this is the constructor subway system
function subwaySystem () {

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

findIndex( N, "Times Square") // this should be equal to cero

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

Line.prototype.calculateStops = function() {

}


// Functionality

var startingLine = prompt("What train are you getting on?");
var startingStation = prompt("Which station?");
var endingLine = prompt("What train are you geting off?");
var endingStation = prompt("Which station?");



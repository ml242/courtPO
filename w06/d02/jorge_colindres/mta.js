var startLine = prompt('What line do you want to start at?');
var startStation = prompt('What station do you want to start at?');
var endLine = prompt('What line do you want to end at?');
var endStation = prompt('What station do you want to end at?');

var trainLines = {
  "N Line": [
    "Lexington",
    "Times Square",
    "34",
    "28-N",
    "23-N",
    "Union Square",
    "8-N"
  ],
  "L Line": [
    "8-L",
    "6",
    "Union Square",
    "3",
    "1"
  ],
  "Six Line": [
    "Grand Central",
    "33",
    "28-6",
    "23-6",
    "Union Square",
    "Astor Place"
  ],
  "F Line": [
    "Lexington",
    "34",
    "23-F",
    "6",
    "W4",
    "Broadway-Lafayette"
  ]
};

if (startLine === endLine){
  var stations = trainLines[startLine];
  var startIndex = stations.indexOf(startStation);
  var endIndex = stations.indexOf(endStation);
  var delta = endIndex - startIndex;
  // start_index = stations.find_index(start_station)
  // end_index = stations.find_index(end_station)
  console.log(delta);
} else {
  console.log('Not done yet');
}


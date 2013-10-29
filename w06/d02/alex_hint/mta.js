//SubwaySystem
//Line













trainLines = {
  n: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  l: ["8th", "6th", "Union Square", "3rd", "1st"],
  s: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}


var startLine = prompt("starting line");
var startStation = prompt("starting station");
var endLine = prompt("ending line");
var endStation = prompt("ending station");

if (startLine === endLine) {
  var line = trainLines[startLine];
  var startIndex = line.indexOf(startStation);
  var endIndex = line.indexOf(endStation);
  var distance = endIndex - startIndex;
} else {
  var startLine = trainLines[startLine];
  var endLine = trainLines[endLine];

  var startIndex = startLine.indexOf(startStation);
  var startTrans = startLine.indexOf("Union Square");
  var startDist = startTrans - startIndex;
  startDist = Math.abs(startDist);

  var endIndex = endLine.indexOf(endStation);
  var endTrans = endLine.indexOf("Union Square");
  var endDist = endTrans - endIndex;
  endDist = Math.abs(endDist);

  var distance = startDist + endDist;

}
alert(distance);
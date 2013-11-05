
var mouseOverEntr = function(e) {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/refugees", false);
  xhr.send();
  var refugees = JSON.parse(xhr.response);
  var refugeesCount = refugees.length;

  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send();
  var crew = JSON.parse(xhr.response);
  var crewCount = crew.length;

  var totalNumber = refugeesCount + crewCount;

  var h3Tag = document.createElement('h3');
  h3Tag.textContent = "Total number of crew and refugees: " + totalNumber;
  enterprise.appendChild(h3Tag);
  //debugger;
  enterprise.removeEventListener('mouseover', mouseOverEntr);
}

var mouseOutEntr = function(e) {
  //debugger;
  var enterprise = document.getElementById('enterprise');
  var h3Tag = document.getElementsByClassName('h3')[0];
  h3Tag.textContent = '';
  enterprise.removeEventListener('mouseout', mouseOutEntr);
}

var doubleClickVulcan = function(e) {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send();
  var crew = JSON.parse(xhr.response);
  var vulcan = document.getElementById('vulcan');
  for (var i = 0; i < crew.length; i++) {
    var pTag = document.createElement('p');
    var memeber = crew[i];
    pTag.textContent = memeber.name;
    pTag.style.background = memeber.shirt_color;
    vulcan.appendChild(pTag);
  }
  vulcan.removeEventListener('dblclick', doubleClickVulcan);
}

var doubleClickEachVulcan = function(e) {
  //debugger;
  //post the vulcan to be saved to DB
  var vulcan = this.textContent;
  var form = new FormData();
  form.append('refugee[name]', vulcan);
  var xhr = new XMLHttpRequest();
  xhr.open("post", "/refugees", false);
  xhr.send(form);
  //remove the vulcan from the planet
  //var vulcanPlanet = document.getElementById('vulcan');
  this.parentNode.removeChild(this);
  //show the refugees on enterprise
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/refugees", false);
  xhr.send();
  var refugees = JSON.parse(xhr.response);
  var enterprise = document.getElementById('enterprise');
  for (var i = 0; i < refugees.length; i++) {
    //debugger;
    var pTag = document.createElement('p');
    pTag.textContent = refugees[i].name;
  }
  enterprise.appendChild(pTag);
}

//When you mouseover #enterprise it should display the total number of crew and refugees on board.
var enterprise = document.getElementById('enterprise');
enterprise.addEventListener('mouseover', mouseOverEntr);
//enterprise.addEventListener('mouseout', mouseOutEntr);
//When you double click on Vulcan it should beam down the crew of the Enterprise. Display each crewmember as a p tag and make their backgrounds match their shirt color.
var vulcan = document.getElementById('vulcan');
vulcan.addEventListener('dblclick', doubleClickVulcan);
//When you double click on a .vulcan beam them up to #enterprise. Create a new XMLHttpRequest to save them to your database as a refugee.
var allVulcans = document.getElementsByClassName('vulcan');
for (var i = 0; i < allVulcans.length; i++) {
  allVulcans[i].addEventListener('dblclick', doubleClickEachVulcan);
}
//When you double click on #enterprise it should display a form to create a new captain's log. Create a new captain's log entry by posting using an XMLHttpRequest




















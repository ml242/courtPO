window.onload = function(){

  console.log('hi');

  var pVulcan = document.getElementById("vulcan");
  var vulcans = ["Sarek", "Skon", "Solkar", "Sybok"];
  var enterprise = document.getElementById("enterprise");


  function addRefugee(){
  var vulcan = this.textContent;
  var form = new FormData();
  form.append('refugees[name]', vulcan);
  var xhr = new XMLHttpRequest();
  var url = "/refugees";
  var method = "POST";
  xhr.open(method, url, false);
  xhr.send(form);
  console.log("refugee added");
  this.parentElement.removeChild(this);
  }

  function populate() {
    for (var i = 0; i < vulcans.length; i++) {
      var citizen = document.createElement('p');
      citizen.textContent = vulcans[i];
      pVulcan.parentElement.appendChild(citizen);
      citizen.addEventListener("dblclick", addRefugee);
    }
  }

  populate();

// When you mouseover `#enterprise` it should display the total number of crew and refugees on board.

function getRefugeeLength() {
  var xhr = new XMLHttpRequest();
  var url = "/refugees";
  var method = "GET";
  xhr.open(method, url, false);
  var readyStateChanges = {
    0: 'The request is not initialized',
    1: 'The request has been set up',
    2: 'The request has been sent',
    3: 'The request is in process',
    4: 'The request is complete'
  };
  xhr.onreadystatechange = function() {
    console.log(readyStateChanges[this.readyState]);
  };
  xhr.send();
  refugee = JSON.parse(xhr.response);
  fugeeLength = document.createElement('p');
  fugeeLength.innerHTML = "<h2>Refugee length:" + refugee.length + "</h2>";
  pVulcan.appendChild(fugeeLength);
  pVulcan.removeEventListener("mouseover", getRefugeeLength);
}

function getCrewLength() {
  var xhr = new XMLHttpRequest();
  var url = "/crew_members";
  var method = "GET";
  xhr.open(method, url, false);
  var readyStateChanges = {
    0: 'The request is not initialized',
    1: 'The request has been set up',
    2: 'The request has been sent',
    3: 'The request is in process',
    4: 'The request is complete'
  };
  xhr.onreadystatechange = function() {
    console.log(readyStateChanges[this.readyState]);
  };
  xhr.send();
  crew = JSON.parse(xhr.response);
  var crewLength = document.createElement('p');
  crewLength.innerHTML = "<h2>Crew length:" + crew.length + "</h2>";
  enterprise.appendChild(crewLength);
  enterprise.removeEventListener("mouseover", getCrewLength);
  enterprise.addEventListener("mouseout", clear);

}

function clear(){
document.removeChild(enterprise.childNodes[2])
}

function beamCrew(){
  var xhr = new XMLHttpRequest();
  var url = "/crew_members";
  var method = "GET";
  xhr.open(method, url, false);
  var readyStateChanges = {
    0: 'The request is not initialized',
    1: 'The request has been set up',
    2: 'The request has been sent',
    3: 'The request is in process',
    4: 'The request is complete'
  };
  xhr.onreadystatechange = function() {
    console.log(readyStateChanges[this.readyState]);
  };
  xhr.send();
  crew = JSON.parse(xhr.response);
  for (var i = 0; i < crew.length; i++) {
    var crewMember = document.createElement('p');
    var shirtColor = crew[i].shirt_color;
    crewMember.textContent = crew[i].name;
    crewMember.style.background=shirtColor;
    vulcan.appendChild(crewMember);
  }
  pVulcan.removeEventListener("dblclick", beamCrew);
}

//  When you double click on Vulcan it should beam down the crew of the Enterprise.  Display each crewmember as a `p` tag and make their backgrounds match their shirt color.



enterprise.addEventListener("mouseover", getCrewLength);
enterprise.addEventListener("mouseout", clear);
pVulcan.addEventListener("mouseover", getRefugeeLength);
pVulcan.addEventListener("dblclick", beamCrew);



};
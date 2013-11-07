console.log('hi');

var vulcans = document.getElementsByClassName("vulcan");

window.onload = function() {
  vulcans = document.getElementsByClassName("vulcan");
  for (var i=0; i < vulcans.length; i++) {
    var vulcan = vulcans[i];
    vulcan.addEventListener('click', fnDblClickVulcan);
  }

}

var enterprise = document.getElementById("enterprise");
enterprise.addEventListener('mouseover', fnMouseOverEnterprise);
enterprise.addEventListener('mouseout', fnMouseOutEnterprise);
enterprise.addEventListener('dblclick', fnDblClickEnterprise);

var vulcanPlanet = document.getElementById("vulcan");
vulcanPlanet.addEventListener('dblclick', fnDblClickVulcanPlanet);

function fnDblClickVulcan(e) {
  e.stopPropagation();
  var vName = this.id
  var refugee;
  var data = {
    refugee: {
      name: vName
    }
  };
  //debugger
  xhrPost("refugees", data)

}


function fnMouseOverEnterprise() {
  var results = xhrRequest('crew_members');
  crewCount = document.createElement('p');
  crewCount.className = 'crew-count';
  crewCount.textContent = results.length + " crew members."
  enterprise.appendChild(crewCount);
}

function fnMouseOutEnterprise() {
  enterprise.innerHTML = "";
}

function fnDblClickVulcanPlanet() {
  var crewMembers = xhrRequest('crew_members');
  crewMembers.className = 'crew'
  var elementCrew = document.createElement("section");
  for (i in crewMembers) {
    crewMember = document.createElement('p');
    crewMember.className = crewMembers[i].shirt_color;
    crewMember.textContent = crewMembers[i].name;
    elementCrew.appendChild(crewMember);
  }
  vulcanPlanet.appendChild(elementCrew);
  vulcanPlanet.removeEventListener('dblclick', fnDblClickVulcanPlanet)
}

function fnDblClickEnterprise() {
  var elementCrew = document.getElementById
}

function xhrRequest(route) {
  var xhr = new XMLHttpRequest();
  var url = "http://localhost:3000/" + route;
  //debugger
  var method = "GET";
  xhr.open(method, url, false);
  xhr.send();
  var results = JSON.parse(xhr.response);
  return results;
}

function xhrPost(route, data) {
  var xhr = new XMLHttpRequest();
  var url = "http://localhost:3000/" + route;
  var method = "POST";
  xhr.open(method, url, false);
  xhr.setRequestHeader('Content-Type', 'application/json');
  var encodedData = JSON.stringify(data);
  debugger
  xhr.send(encodedData);
}





// function xhrRequestSingle(route) {
//   var xhr = new XMLHttpRequest();
//   var url = "http://localhost:3000/" + route;
//   var method = "GET";
//   xhr.open(method, url, false);
//   xhr.send();
//   var results = JSON.parse(xhr.response);
//   return results;
// }

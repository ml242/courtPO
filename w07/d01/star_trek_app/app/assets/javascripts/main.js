window.onload = function() {

  var enterprise = document.getElementById('enterprise');
  var vulcans = document.getElementsByClassName('vulcan');
  var vulcan = document.getElementById('vulcan');
  var vulcanRace = document.getElementsByClassName('vulcan');

  enterprise.addEventListener("mouseover", fnCountCrewRefugees);
  vulcan.addEventListener("dblclick", fnListCrewMembers);

  function fnCountCrewRefugees() {
    // get crew members from json
    var xhr = new XMLHttpRequest();
    xhr.open("get", "/crew_members", false);
    xhr.send();
    var crew = JSON.parse(xhr.response);
    var crewCount = crew.length;

    // get vulcans by counting what's on the page
    var vulcansCount = vulcans.length;

    // how many vulcans and crew members
    enterprise.textContent = ("There are " + crewCount + " crew members and " + vulcansCount + " vulcans.");
    // var onBoard = (crewCount + vulcansCount);
    // enterprise.textContent = onBoard;
  }

  function fnListCrewMembers() {
    var xhr = new XMLHttpRequest();
    xhr.open("get", "/crew_members", false);
    xhr.send();
    var crew = JSON.parse(xhr.response);

    for (var i=0; i < crew.length; i++) {

      var name = crew[i].name;
      var shirt_color = crew[i].shirt_color;
      var pTag = document.createElement('p');
      pTag.textContent = (name);
      pTag.style.backgroundColor = shirt_color;
      vulcan.appendChild(pTag);
    }
  }

  function fnBeamToEnterprise() {

  }

};

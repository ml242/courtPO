


window.onload = function () {
  enterprise = document.getElementById('enterprise');
  vulcan = document.getElementById('vulcan');
  vulcanRace = document.getElementsByClassName('vulcan')


  //event listeners below
  //When you mouseover `#enterprise` it should display the total number of crew and refugees on board.
  enterprise.addEventListener("mouseover", totalOnBoard)
  //When you double click on Vulcan it should beam down the crew of the Enterprise.  Display each crewmember as a `p` tag and make their backgrounds match their shirt color. -
  vulcan.addEventListener("dblclick", beamCrew)
}

function totalOnBoard() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send();
  var crew = JSON.parse(xhr.response);
  alert(crew.length + " crew members on board");
  // var ulTag = document.createElement('ul');

  ///use for later functions?
  // for (var i = 0; i < crew.length; i++) {
  //       liTag = document.createElement('li');
  //       liTag.textContent = crew[i].name;
  //       liTag.id = crew[i].id;
  //       ulTag.appendChild(liTag);
  //     }

}

function beamCrew() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send();

  var crew = JSON.parse(xhr.response);

    for (var i = 0; i < crew.length; i++) {
       var pTag = document.createElement('p');

       pTag.textContent = crew[i].name
       pTag.style.backgroundColor = crew[i].shirt_color;
       vulcan.appendChild(pTag);
     }


function beamVulcans()
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send();



}


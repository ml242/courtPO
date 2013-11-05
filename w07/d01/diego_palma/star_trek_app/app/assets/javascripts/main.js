var enterprise = document.getElementById('enterprise')
 debugger;

function countCrewAndRefugees() {
  //count crew_members
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send();
  var crewMembers = JSON.parse(xhr.response);
  var totalCrewMembers = crewMembers.length;
  //count refugees
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/refugees", false);
  xhr.send();
  var refugees = JSON.parse(xhr.response);
  var totalRefugees = refugees.length;

  // return total
  var total = totalRefugees + totalCrewMembers

  enterprise.textContent = ("There are " + totalCrewMembers + " crew members and " + totalRefugees + " refugees.");

}

function removeCount() {
  enterprise.textContent = ""
}


 function doubleClickVulcan() {
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
 }


enterprise.addEventListener('mouseover', countCrewAndRefugees)
enterprise.addEventListener('mouseout', removeCount)
vulcan.addEventListener('dblclick', doubleClickVulcan);
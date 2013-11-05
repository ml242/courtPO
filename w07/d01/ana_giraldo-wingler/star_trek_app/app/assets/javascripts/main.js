window.onload = function(){

  console.log('hi');

  var pVulcan = document.getElementById("vulcan");
  var vulcans = ["Sarek", "Skon", "Solkar", "Sybok"];

  for (var i = 0; i < vulcans.length; i++){
    var citizen = document.createElement('p');
    citizen.id = vulcans[i];
    citizen.textContent = vulcans[i];
    pVulcan.appendChild(citizen);
    citizen.addEventListener("dblclick", beamUp);
  };

  function countTotalCrew(){
    var xhr = new XMLHttpRequest();
    xhr.open("get", "/crew_members", false);
    // when we're done loading run this.
    xhr.onreadystatechange = function() {
      console.log(this.readyState);
      if (this.readyState === 4) {
        var crew = JSON.parse(xhr.response);
        var crewSize = document.createElement('p');
        crewSize.innerHTML = "<h2>Crew size: " + crew.length; + "</h2>";
        enterprise.appendChild(crewSize);
      }
    }
    xhr.send(null);
    enterprise.removeEventListener("mouseover", countTotalCrew);
  }

  function countTotalRefugees(){
    var xhr = new XMLHttpRequest();
    xhr.open("get", "/refugees", false);
    // when we're done loading run this.
    xhr.onreadystatechange = function() {
      console.log(this.readyState);
      if (this.readyState === 4) {
        var refugees = JSON.parse(xhr.response);
        var refugeeNumber = document.createElement('p');
        refugeeNumber.innerHTML = "<h2>Refugees: " + refugees.length; + "</h2>";
        enterprise.appendChild(refugeeNumber);
      }
    }
    xhr.send(null);
    enterprise.removeEventListener("mouseover", countTotalRefugees);
  }

// When you double click on Vulcan it should beam down the crew of the Enterprise.  Display each crewmember as a `p` tag and make their backgrounds match their shirt color.

function beamDown(){
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
    // when we're done loading run this.
    xhr.onreadystatechange = function() {
      console.log(this.readyState);
      if (this.readyState === 4) {
        var crew = JSON.parse(xhr.response);
        for (var i = 0; i < crew.length; i++){
          var name = crew[i].name;
          var shirtColor = crew[i].shirt_color;
          var crewMember = document.createElement("p");
          crewMember.textContent = name;
          crewMember.id = name;
          crewMember.style.background=shirtColor;
          vulcan.appendChild(crewMember);
        }
      }
    }
    xhr.send(null);
    vulcan.removeEventListener("dblclick", beamDown);
  };

  function beamUp(){
    var newRefugee = this.id;
    var form = new FormData();
    form.append('name', newRefugee);
    var xhr = new XMLHttpRequest();
    var method = "POST";
    var url = "/refugees";
    xhr.open(method, url, false);
    xhr.send(form);
    console.log("refugee added");
    this.removeEventListener("dblclick", beamUp);
  }

  enterprise.addEventListener("mouseover", countTotalCrew);
  enterprise.addEventListener("mouseover", countTotalRefugees);
  vulcan.addEventListener("dblclick", beamDown);
};
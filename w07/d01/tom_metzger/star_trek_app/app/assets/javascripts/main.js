var enterprise = getAsynch("get", "/star_ships");
var starshipEnterprise = document.getElementById("enterprise");
var vulcanPlanet = document.getElementById("vulcan");
var vulcans = ["sarek", "Skon", "Solkar", "Sybok"];
var crew = getAsynch("get", "/crew_members");
var passengersOnBoard = 0;

createVulcans();

starshipEnterprise.addEventListener("mouseover", passengers);
starshipEnterprise.addEventListener("mouseout", hidePassengers);


function createVulcans() {
  planet = vulcanPlanet
  for (i in vulcans) {
    vul = document.createElement('p');
    vul.textContent = vulcans[i]
    vul.id = vulcans[i]
    vul.class = "vulcan";
    vulcanPlanet.appendChild(vul);
  }
}



// function getCrew() {
//   var xhr = new XMLHttpRequest();
//   xhr.open("get", "/crew_members", true);
//   xhr.onreadystatechange = function() {
//     if (this.readyState === 4) {
//       crew = JSON.parse(xhr.response);
//     }
//   }
//   xhr.send(null);
// }

function getAsynch(method, path) {
  var xhr = new XMLHttpRequest();
  xhr.open(method, path, true);
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {
      return JSON.parse(xhr.response);
    }
  }
  xhr.send(null);
}

function getSynch(method, path) {
  var xhr = new XMLHttpRequest();
  xhr.open(method, path, false);
  xhr.send(null);
}


// function countRefugees() {

// }

function passengers() {

  var passengersOnBoard = 0;
  // var refugees = countRefugees();
  for (i in crew) {
    if (crew[i].on_ship){
      passengersOnBoard++;
    }
  }
// this only prints out correctly the second time that it is triggered, gets evaluated & prints before the for loop is executed
  starshipEnterprise.textContent += " currently has " + passengersOnBoard + " passengers";
}

function hidePassengers(e) {
  this.textContent = "Enterprise";
}




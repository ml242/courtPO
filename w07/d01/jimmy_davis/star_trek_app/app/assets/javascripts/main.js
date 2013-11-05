var enterprise = document.getElementById("enterprise");
// var vulcans = [“sarek”, “Skon”, “Solkar”, “Sybok”];

// When you mouseover `#enterprise`
// it should display the total number of crew and refugees on board.

function countTotalCrew() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", true);
  xhr.onreadystatechange = function() {
    console.log(this.readyState);
    if (this.readyState === 4) {
      var crew = JSON.parse(xhr.response);
      enterprise.textContent = crew.length;
      // alert(crew.length);
    }
  };
  xhr.send(null);
}
// debugger
enterprise.addEventListener("mouseover", countTotalCrew);


function countTotalRefugees() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/refugees", true);
  xhr.onreadystatechange = function() {
    console.log(this.readyState);
    if (this.readyState === 4) {
      var crew = JSON.parse(xhr.response);
      enterprise.textContent = crew.length;
      // alert(crew.length);
    }
  };
  xhr.send(null);
}
// debugger
enterprise.addEventListener("mouseover", countTotalRefugees);


// When you double click on Vulcan
// it should beam down the crew of the Enterprise.
// Display each crewmember as a `p` tag
// and make their backgrounds match their shirt color.
var vulcanId = document.getElementById("vulcan");

function beamEnterpriseCrew() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", true);
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {
      var crew = JSON.parse(xhr.response);
      var pTag = document.getElementsByClassName('p');
      for (var i = 0; i < crew.length; i++) {
        pTag.textContent = crew[i].name;
        pTag.style.background = crew[i].shirt_color;
        // debugger
        pTag.addEventListener('dblclick', beamEnterpriseCrew);
      }
    }
  };
  xhr.send(null);
}



// When you double click on a `.vulcan`
// beam them up to `#enterprise`.
// Create a new `XMLHttpRequest` to save them to your database as a refugee.
var vulcanClass = document.getElementsByClassName("vulcan");


// When you double click on `#enterprise`
// it should display a form to create a new captain’s log.
// Create a new captain’s log entry by posting using an `XMLHttpRequest`

var form = new FormData();
form.append("captains_logs[name]");
var xhr = new XMLHttpRequest();
xhr.open("POST", "/captains_logs", false);
xhr.send(form);
xhr.setRequestHeader('Content-Type', 'application/json');






// ## We’re under attack!

// Inside `#space` create a new `article` tag
// with `class` of `bird-of-prey`
// and a `class` of `starship`.




// single clicking on a ship reduces it’s health by `10`

// double clicking on a ship reduces it’s health by `50`

// When a ship’s health is at 0 it should be removed from the page.

// Use `setInterval` to make Klingon `bird-of-prey` ships appear every 1 minute.

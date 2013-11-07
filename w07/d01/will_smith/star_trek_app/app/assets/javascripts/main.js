console.log('hi');
var enterprise;

window.onload = function() {
  enterprise = $('#enterprise');
  vulcan = $('#vulcan');
  vulcanClass = $('.vulcan');

  enterprise.addEventListener('mouseover', countTotalCrew);
  enterprise.addEventListener('mouseover', countTotalRefugees);
  enterprise.addEventListener('mouseout', restoreEnterprise);
  // vulcan.addEventListener('dblclick', beamToVulcan);
  vulcanClass.addEventListener('dblclick', beamToEnterprise);
};

function countTotalCrew() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", true);
  // when we're done loading run this.
  xhr.onreadystatechange = function() {
    console.log(this.readyState);
    if (this.readyState === 4) {
      var crew = JSON.parse(xhr.response);
      crewLength = crew.length;
    }
  };
  xhr.send(null);
}

function countTotalRefugees() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/refugees", true);
  xhr.onreadystatechange = function(){
    console.log(this.readyState);
    if (this.readyState === 4) {
      var refugees = JSON.parse(xhr.response);
      enterprise.innerHTML = "<h1>Enterprise</h1><p>There are " + (crewLength + refugees.length) + " total people aboard the enterprise:<br> " + crewLength + " crew members<br> " + refugees.length + " refugees</p>";
    }
  };
  xhr.send(null);
}

function restoreEnterprise() {
  enterprise.innerHTML = "<h1>Enterprise</h1>";
}

function beamToVulcan() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", true);
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {
      var crew = JSON.parse(xhr.response);
      for (var i = 0; i < crew.length; i++) {
        pTag = document.createElement('p');
        pTag.textContent = crew[i].name;
        pTag.id = crew[i].id;
        pTag.style.backgroundColor = crew[i].shirt_color;
        vulcan.appendChild(pTag);
      }
    }
  };
  xhr.send(null);
}

function beamToEnterprise() {
  alert("hi");
  var name = this.innerText;
  var form = new FormData();
  form.append('refugees[name]', name);
  var xhr = new XMLHttpRequest();
  xhr.open("post", "/refugees", false);
  xhr.send(form);
  console.log("refugee added");
}




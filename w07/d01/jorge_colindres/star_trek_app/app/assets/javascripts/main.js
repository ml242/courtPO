function countTotalCrew() {
  var xhr = new XMLHttpRequest();
  xhr.open('get', '/crew_members', true);
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {
      var crew = JSON.parse(xhr.response);
      var crewSpan = document.createElement('span');
      crewSpan.textContent = crew.length + ' crew members & ';
      enterprise.appendChild(crewSpan);
    }
  };
  xhr.send(null);
  enterprise.removeEventListener('mouseover', countTotalCrew);
}

function countTotalRefugees() {
  var xhr = new XMLHttpRequest();
  xhr.open('get', '/refugees', true);
  xhr.onreadystatechange = function(){
    if (this.readyState === 4){
      var refugees = JSON.parse(xhr.response);
      var refugeesSpan = document.createElement('span');
      refugeesSpan.textContent = refugees.length + ' refugees';
      enterprise.appendChild(refugeesSpan);
    }
  };
  xhr.send(null);
  enterprise.removeEventListener('mouseover', countTotalRefugees);
}

function createVulcans(){
  var vulcans = ["Sarek", "Skon", "Solkar", "Sybok"];
  WDIBelt.each (vulcans, function(newVulcan, index){
    var vulcanParEl = document.createElement('p');
    vulcanParEl.textContent = newVulcan;
    vulcan.appendChild(vulcanParEl);
    vulcanParEl.addEventListener('click', beemUpVulcan);
  });
}

function listCrew(){
  var xhr = new XMLHttpRequest();
  xhr.open('get', '/crew_members', true);
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {
      var crew = JSON.parse(xhr.response);
      WDIBelt.each (crew, function(crewMember, index){
        var listItem = document.createElement('li');
        listItem.textContent = crewMember.name;
        listItem.className = 'crew-member';
        listItem.id = crewMember.id;
        enterprise.appendChild(listItem);
      });
    }
  };
  xhr.send(null);
  enterprise.removeEventListener('click', listCrew);
}

function beemDownCrew(){
  var crewArray = document.getElementsByClassName('crew-member');
  WDIBelt.each(crewArray, function(element, index){
    var crewMember = document.createElement('p');
    crewMember.textContent = element.textContent;
    crewMember.id = element.id;
    vulcan.appendChild(crewMember);

    var xhr = new XMLHttpRequest();
    xhr.open('get', '/crew_members/' + crewMember.id, true);
    xhr.onreadystatechange = function() {
      if (this.readyState === 4) {
        var crewMemberData = JSON.parse(xhr.response);
        crewMember.style.background = crewMemberData.shirt_color;
      }
    };
    xhr.send(null);
  });
  enterprise.innerHTML = '<h4>Enterprise</h3>';
}

function beemUpVulcan(){
  var xhr = new XMLHttpRequest();
  xhr.open('post', '/refugees', false);
  xhr.setRequestHeader('Content-Type', 'application/json');
  var refugeeData = {
    refugee: {
      name: this.textContent
    }
  };
  var encodedRefugee = JSON.stringify(refugeeData);
  xhr.send(encodedRefugee);
  enterprise.appendChild(this);
}

function addCaptainsLog(){
  var xhr = new XMLHttpRequest();
  xhr.open('get', '/captains_logs/new', true);
  xhr.onreadystatechange = function(){
    if (this.readyState === 4){
      var captainsLogPage = xhr.response;
      var captainsLog = document.createElement('div');
      captainsLog.innerHTML = captainsLogPage;
      captainsLog = captainsLog.querySelector('form');
      enterprise.appendChild(captainsLog);

      captainsLog.addEventListener('submit', sendCaptainsLog);
    }
  };
  xhr.send();
}

function sendCaptainsLog(e) {
  var xhr = new XMLHttpRequest();
  xhr.open('post', '/captains_logs', false);
  xhr.setRequestHeader('Content-Type', 'application/json');
  var logTitleInput = document.getElementById('captains_log_title');
  var logMessageTextArea = document.getElementById('captains_log_message');

  var captainsLogData = {
    captains_log: {
      title: logTitleInput.value,
      message: logMessageTextArea.value
    }
  };

  var encodedCaptainsLog = JSON.stringify(captainsLogData);
  xhr.send(encodedCaptainsLog);
  e.preventDefault();
  this.remove();
}

function addBirdOfPrey(){
  var birdOfPrey = document.createElement('article');
  birdOfPrey.className = 'bird-of-prey starship';
  birdOfPrey.textContent = 'Bird of Prey';
  space.appendChild(birdOfPrey);
  birdOfPrey.health = 100;
  birdOfPrey.addEventListener('click', lowerShipHealth);
  birdOfPrey.addEventListener('dblclick', superLowerShipHealth);
}

function releaseBirdsOfPrey(){
  setInterval(addBirdOfPrey, 60000);
}

function lowerShipHealth(){
  this.health -= 10;
  console.log(this.health);
  if (this.health <= 0){
    this.remove();
  }
}

function superLowerShipHealth(){
  this.health -= 30;
  console.log(this.health);
  if (this.health <= 0){
    this.remove();
  }
}

$(function(){
  var space = document.getElementById('space');
  var enterprise = document.getElementById('enterprise');
  var vulcan = document.getElementById('vulcan');
  enterprise.addEventListener('mouseover', countTotalCrew);
  enterprise.addEventListener('mouseover', countTotalRefugees);
  enterprise.addEventListener('click', listCrew);
  enterprise.addEventListener('dblclick', addCaptainsLog);
  vulcan.addEventListener('click', beemDownCrew);

  createVulcans();
  releaseBirdsOfPrey();
});


window.onload = function() {
  var vulcans = ["sarek", "Skon", "Solkar", "Sybok"];
  var vulcanPlanet = document.getElementById('vulcan');
  var space = document.getElementById("space");
  for(i = 0; i < vulcans.length; i++) {
    var pTag = document.createElement("p");
    pTag.textContent = vulcans[i];
    pTag.class = "vulcan";
    pTag.id = vulcans[i];
    pTag.addEventListener("dblclick", beamMeUpScotty);
    vulcanPlanet.appendChild(pTag);
  }

  var enterprise = document.getElementById("enterprise");
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send();
  var crew = JSON.parse(xhr.response);
  xhr = new XMLHttpRequest();
  xhr.open("get", "/refugees", false);
  xhr.send();
  var refugees = JSON.parse(xhr.response);
  var onBoard = crew.length + refugees.length;

  function displayOnBoard() {
    var pTag = document.createElement("p");
    pTag.id = "on-board";
    pTag.textContent = onBoard + " people on board the Starship Enterprise";
    enterprise.appendChild(pTag);
  }

  function removeOnBoard() {
    var pTag = document.getElementById("on-board");
    enterprise.removeChild(pTag);
  }

  function removeEvent(target, kind, func) {
    target.removeEventListener(kind, func);
  }

  enterprise.addEventListener("mouseover", displayOnBoard);
  enterprise.addEventListener("mouseout", removeOnBoard);

  function beamMeDownScotty() {
    for(var i = 0; i < crew.length; i++) {
      var pTag = document.createElement("p");
      var id = crew[i].id;
      var xhr = new XMLHttpRequest();
      xhr.open("get", "/crew_members/" + id, false);
      xhr.send();
      var crewMember = JSON.parse(xhr.response);
      pTag.textContent = crewMember.name;
      pTag.style.background = crewMember.shirt_color;
      vulcanPlanet.appendChild(pTag);
    }
    removeEvent(vulcanPlanet, "dblclick", beamMeDownScotty);
    onBoard -= 5;
  }

  vulcanPlanet.addEventListener("dblclick", beamMeDownScotty);

  function beamMeUpScotty() {
    var vulcan = this;
    enterprise.appendChild(vulcan);
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/refugees", false);
    var refugee = new FormData();
    refugee.append("name", vulcan.id);
    xhr.send(refugee);

  }

  function captainsLog() {
    var captainLog = new FormData();
    var xhr = new XMLHttpRequest();
    var title = prompt("title");
    var message = prompt("message");
    captainLog.append("title", title);
    captainLog.append("message", message);
    xhr.open("POST", "/captains_logs", false);
    xhr.send(captainLog);
    onBoard += 1;
  }
  enterprise.addEventListener("dblclick", captainsLog);

  enterprise.health = 100;


  function birdOfPrey() {
    var bird = document.createElement("article");
    bird.className = "bird-of-prey starship";
    bird.health = 100;
    bird.textContent = "bird of prey ship";
    space.appendChild(bird);
    bird.addEventListener("click", function(){
      console.log(this.health);
      var bird = this;
      if(bird.health === 0) {
        space.removeChild(bird);
      }
      else {
        this.health -= 10;
      }
    });
    bird.addEventListener("dblclick", function(){
      console.log(this.health);
      var bird = this;
      if(bird.health === 0) {
        space.removeChild(bird);
      }
      else {
        this.health -= 50;
      }
    });
    // debugger;
  }


  var attack = setInterval(birdOfPrey, 60000 );



};
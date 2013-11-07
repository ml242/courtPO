console.log('hi');
var vulcans = ["sarek", "Skon", "Solkar", "Sybok"];
var enterprise = document.getElementById("enterprise");

totalCrew = function(e) {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members.json", false);
  xhr.send();
  var crew = JSON.parse(xhr.response);
  xhr.open("get", "/refugees.json", false);
  xhr.send();
  var refugees = JSON.parse(xhr.response);
  this.children[0].textContent = crew.length + " crew members aboard and " + refugees.length + " refugees aboard";
}
mouseOutFunc = function(e) {
  this.children[0].textContent = "Starship Enterprise";
}
clickFunc = function(e) {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members.json", false);
  xhr.send();
  ulTag = document.createElement("ul");
  var crew = JSON.parse(xhr.response);
  for (var i = crew.length - 1; i >= 0; i--) {
    liTag = document.createElement("li");
    liTag.textContent = crew[i].name;
    ulTag.appendChild(liTag);
  };
  this.appendChild(ulTag);
}

enterprise.addEventListener("click", clickFunc);
enterprise.addEventListener("mouseover", totalCrew);
enterprise.addEventListener("mouseout", mouseOutFunc);
var vulcan = document.getElementById("vulcan");
var takeRefuge = function(e) {
  var form = new FormData();
  form.append('refugee[name]', this.textContent)
  var xhr = new XMLHttpRequest();
  xhr.open("post", "/refugees", false);
  xhr.send(form);
  vulcan.removeChild(this);
}
for (var i = vulcans.length - 1; i >= 0; i--) {
  pTag = document.createElement("p");
  pTag.className = "vulcan";
  pTag.textContent = vulcans[i];
  pTag.addEventListener("dblclick", takeRefuge);
  vulcan.appendChild(pTag);
};
var beamMeDown = function(e) {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members.json", false);
  xhr.send();
  var crew = JSON.parse(xhr.response);
  for (var i = crew.length - 1; i >= 0; i--) {
    pTag = document.createElement("p");
    pTag.textContent = crew[i].name;
    pTag.style.backgroundColor = crew[i].shirt_color;
    vulcan.appendChild(pTag);

  }
  if (enterprise.children[2]) {
    enterprise.removeChild(enterprise.children[2]);
  }
}
vulcan.children[0].addEventListener("dblclick", beamMeDown);
var starDate = function(e) {

}

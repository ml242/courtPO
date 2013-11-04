//wrap in window.onload, maybe

var mouseOverFn = function() {
  var xhr = new XMLHttpRequest();
  xhr.open("get", "/refugees", false);
  xhr.send();
  var refugees = JSON.parse(xhr.response);
  var refugeesCount = refugees.length;

  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send();
  var crew = JSON.parse(xhr.response);
  var crewCount = crew.length;

  var totalNumber = refugeesCount + crewCount;

  var h3Tag = document.createElement('h3');
  h3Tag.textContent = "Total number of crew and refugees: " + totalNumber;
  enterprise.appendChild(h3Tag);
  enterprise.removeEventListener('mouseover', mouseOverFn);
}

var enterprise = document.getElementById('enterprise');
enterprise.addEventListener('mouseover', mouseOverFn);
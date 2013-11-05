// this is my file
// ---------------
console.log('hi');


var alderaan = document.getElementById("alderaan");
var deathStar = document.getElementById("death-star");
var never = document.getElementById("never");
var tell  = document.getElementById("tell");
var locationForm, inputLocation, secretButton, fnClickSecret;



alderaan.addEventListener('mouseover', fnMouseOver);
deathStar.addEventListener('mouseover', fnMouseOver);
alderaan.addEventListener('mouseout', fnMouseOut);
deathStar.addEventListener('mouseout', fnMouseOut);

never.addEventListener('click', fnNeverClick);
tell.addEventListener('click', fnNewForm);
//secretButton.addEventListener('click', fnClickSecret(inputLocation.value));


function fnMouseOver(e) {
  //console.log(e);
  this.children[0].className = 'show';
}

function fnMouseOut(e) {
  //console.log(e);
  this.children[0].className = "hidden";
}

function fnNeverClick(e) {
  //console.log(e);
  alderaan.parentElement.removeChild(alderaan);
}

function fnNewForm(e) {
  console.log(e);
  locationForm = document.createElement("form");
  inputLocation = document.createElement("input");
  secretButton = document.createElement("button");
  inputLocation.name = "location";
  inputLocation.placeholder = "location";
  secretButton.textContent = "Secret Coordinates"
  secretButton.id = 'secret-coordinates';
  locationForm.appendChild(inputLocation);
  document.body.appendChild(locationForm);
  document.body.appendChild(secretButton);
  e.preventDefault();
  secretButton.addEventListener('click', function() {
    fnClickSecret(inputLocation.value);
    })
}

function fnClickSecret(inputLocation) {
  //debugger
  if (inputLocation === "Yavin 4") {
    document.body.className = "green";
  } else {
    document.body.className = "red";
  }
}


window.onkeyup = function(e) {

 console.log(e.charCode)
  if (e.keyCode === 72){
    alert("gotchya");
  }
}











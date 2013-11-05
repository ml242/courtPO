var formDiv = document.getElementById("form-div");

// mouseover alderaan and death star functions
var alderaan = document.getElementById("alderaan");
var deathStar = document.getElementById("death-star");
var nevBtn = document.getElementById("tell");
var secretField;

deathStar.addEventListener('mouseover', seePlanet);
alderaan.addEventListener('mouseover', seePlanet);
nevBtn.addEventListener('click', makeForm);
// secretField.addEventListener('keydown', trackChange);
// If you click on `button#never` the `alderaan` div should be removed.


function seePlanet() {
  this.textContent = this.id;
}

function seetheDeathStar(){
  deathStar.textContent="The Death Star";
}

function seeAlderaan(){
  alderaan.textContent="alderaan";
}

function removeAlderaan(){
  alderaan.parentNode.removeChild(alderaan);
}

function makeForm(e){
  e.preventDefault();
  formDiv.innerHTML='<input type="text" name="location" id="secret-input"><input type="button" id="secret-coordinates" value="secrets">';
  secretField = document.getElementById("secret-input");
  secretField.addEventListener('keyup', trackChange);
}

  function trackChange(e){
    console.log(e);
    if (secretField.value === "Yavin-4") {
      document.body.style.backgroundColor="green";
    } else {
      document.body.style.backgroundColor="red";
  }
}


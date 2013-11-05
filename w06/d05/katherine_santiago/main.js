// wait until the DOM has loaded
window.onload = function() {
  var alderaan = document.getElementById("alderaan");
  var deathStar = document.getElementById("death-star");
  var neverButton = document.getElementById("never");
  var aTell = document.getElementById("tell");
  var loc = document.getElementsByName("location")[0];
  var secretCoordBtn = document.getElementById('secret-coordinates');
  var form1 = document.getElementById('form1');
  alderaan.addEventListener("mouseover", sayNameWhenMouseOver);
  alderaan.addEventListener("mouseout", hideNameWhenMouseOut);
  deathStar.addEventListener("mouseover", sayNameWhenMouseOver);
  deathStar.addEventListener("mouseout", hideNameWhenMouseOut);
  neverButton.addEventListener("click", removePlanet);
  aTell.addEventListener("click", showForm);
  secretCoordBtn.addEventListener("click", function(e) {
  if (loc.value === "yavin 4") {
    document.body.style.background = "green";}
  else {
    document.body.style.background = "red";
  }
});
}


var sayNameWhenMouseOver = function() {
  this.innerHTML = this.id;
}

var hideNameWhenMouseOut = function() {
  this.innerHTML = "";
}

var removePlanet = function() {
  document.body.removeChild(alderaan);
}

var showForm = function(e) {
  e.preventDefault();
  form1.className = "show";
}

// var changeColor = function(e) {
//   if (loc.value === "yavin 4") {
//     document.body.style.background = "green";}
//   else {
//     document.body.style.background = "red";
//   }
// }
  // keypress tells you that someone has typed something in
  // everytime a keypress is done, yo should check if it === 'yavin 4'
  // yavin 4 is in document.getElementsByName('location')[0].value




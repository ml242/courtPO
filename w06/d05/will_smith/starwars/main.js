// this is my file
// ---------------
console.log('hi');
  window.onload = function() {
    var mouseOverAlderaan = document.getElementById("alderaan");
    var mouseOverDeathStar = document.getElementById("death-star");
    var mouseOutAlderaan = document.getElementById("alderaan");
    var mouseOutDeathStar = document.getElementById("death-star");
    var never = document.getElementById("never");
    var alderaan = document.getElementById("alderaan");
    var tell = document.getElementById("tell");
    var form = document.getElementById("form");
    var secretCoordinates = document.getElementById("secret-coordinates");
    // If you mouseover alderaan or death-star their respective names should appear.
    mouseOverAlderaan.addEventListener("mouseover", fnToRunOnMouseOverAlderaan);
    mouseOverDeathStar.addEventListener("mouseover", fnToRunOnMouseOverDeathStar);
    mouseOutAlderaan.addEventListener("mouseout", fnToRunOnMouseOutAlderaan);
    mouseOutDeathStar.addEventListener("mouseout", fnToRunOnMouseOutDeathStar);
    // If you click on button#never the alderaan div should be removed.
    never.addEventListener("click", function(e) {
      alderaan.parentNode.removeChild(alderaan);
      e.stopPropagation();
    });
    // If you click on a#tell make a new form with a text with the name location and a button with the id of secret-coordinates
    tell.addEventListener("click", function(e) {
      tell.parentElement.childNodes[1].className = "";
      e.stopPropagation();
      e.preventDefault();
    });
    // If you type Yavin 4 into input[name=location] the body background should turn green otherwise make the body red
    secretCoordinates.addEventListener("click", function(e){
      e.preventDefault();
      if (form[0].value === "Yavin 4"){
        document.body.style.background = "green";
      } else {
        document.body.style.background = "red";
      }
    });
}

    var fnToRunOnMouseOverAlderaan = function() {
      this.innerHTML = "<h1>Alderaan</h1>";
    };
    var fnToRunOnMouseOverDeathStar = function() {
      this.innerHTML = "<h1>Death Star</h1>";
    };

    var fnToRunOnMouseOutAlderaan = function() {
      this.innerHTML ="";
    };
    var fnToRunOnMouseOutDeathStar = function() {
      this.innerHTML = "";
    };

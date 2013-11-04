window.onload = function() {

  var alderaan = document.getElementById("alderaan");
  var deathStar = document.getElementById("death-star");
  var helpMe = document.createElement("input");
  helpMe.type = "text";
  helpMe.id = "secret-message";
  helpMe.className = "hidden";
  document.body.appendChild(helpMe);

  function planetName() {
    this.innerHTML = this.id;
  }

  alderaan.addEventListener("mouseover", planetName);
  deathStar.addEventListener("mouseover", planetName);

  var never = document.getElementById("never");
  var tell = document.getElementById("tell");
  tell.addEventListener("click", function() {
    var form = document.createElement("form");
    var input = document.createElement("input");
    input.type = "text";
    input.name = "location";
    input.id = "secret-coordinates";
    form.appendChild(input);
    document.body.appendChild(form);


    var secret = document.getElementById("secret-coordinates");
    secret.addEventListener("keypress", function(e) {
      if (e.keyCode === 13) {
        if(secret.value == "Yavin 4") {
          document.body.style.background = "green";
        }
        else {
          document.body.style.background = "red";
        }
        e.preventDefault();
      }
    });
  });

  never.addEventListener("click", function (){
      var orange = setInterval(function(){
        alderaan.style.background = "orange";
      }, 20);
      var white = setInterval(function() {
        alderaan.style.background = "white";
      }, 40);
    var boom = setTimeout(function(){
      clearInterval(orange);
      clearInterval(white);
      alert("BOOOOOOMMMMMMMMMMMMMMM");
      document.body.removeChild(alderaan);
    }, 5000);
  });

  document.body.addEventListener("keypress", function(e) {
    var letter = String.fromCharCode(event.keyCode);
    if(letter == "h") {
      helpMe.className = "showing";
      helpMe.addEventListener("keypress", function(e) {
        if (e.keyCode === 13) {
          if(helpMe.value == "Help me Obi Wan, you're my only hope") {
            document.body.style.background = "blue";
          }

        }
      });
      e.stopPropagation();
    }
  });



};


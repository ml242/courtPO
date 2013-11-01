var alderaan = document.getElementById("alderaan");
var deathStar = document.getElementById("death-star");
var never = document.getElementById("never");

function showName(e) {
  var planetName = this.children[0];
  planetName.style.display = "block";
}

function hideName(e) {
  var planetName = this.children[0];
  planetName.style.display = "none";
}

alderaan.addEventListener("mouseover", showName);
alderaan.addEventListener("mouseout", hideName);
deathStar.addEventListener("mouseover", showName);
deathStar.addEventListener("mouseout", hideName);


function destroyAlderaan(e) {
  alderaan.parentNode.removeChild(alderaan);
}

never.addEventListener("click", destroyAlderaan);

var locationCounter = 0

function tellSecretLocation(e) {
  if (locationCounter === 0) {
  var inputBox = document.createElement('input');
  inputBox.id = "location";
  var locationButton = document.createElement('button');
  locationButton.textContent = "submit location";
  locationButton.id = "secret-coordinates";
  document.body.appendChild(inputBox);
  document.body.appendChild(locationButton);
  locationCounter++;
  document.getElementById("secret-coordinates").addEventListener("click", verifyCoordinates);
  }
  e.preventDefault();
}

document.getElementById("tell").addEventListener("click", tellSecretLocation);


// veryfy coordinates-------------------------------------------------------

  // function's listener is put into the above function "tellSecretLocation" becasue the listener can't be called before the HTML element is created

  // Issues I had with this:
  // forgot quotes around style element -- rgba()
  // forgot to use "style" command between body.background

function verifyCoordinates(e) {
  var coordinates = document.getElementById("location").value;
  if (coordinates === "Yavin 4") {
    document.body.style.background = "rgba(0,150,0,1)";
  } else {
    document.body.style.background = "rgba(150,0,0,1)";
  }
  e.preventDefault;
}

// create message-------------------------------------------------------
var counter = 0;

function helpMeObiWan(e) {
  var letter = String.fromCharCode(e.keyCode);
    if (letter === "H" && counter === 0) {
        var messageBox = document.createElement('input');
          messageBox.id = "help-me";
        var messageButton = document.createElement('button');
          messageButton.textContent = "create message";
          messageButton.id = "secret-message";
        document.body.appendChild(messageBox);
        document.body.appendChild(messageButton);
        counter++;
        document.getElementById("secret-message").addEventListener("click", createMessage);
    }
}

document.body.addEventListener("keydown", helpMeObiWan);


// veryfy coordinates-------------------------------------------------------

function createMessage(e) {
  var message = document.getElementById("help-me").value;
  if (message === "Help me Obi Wan, you're my only hope") {
    document.body.style.background = "rgba(0,0,250,0.8)";
  }
  e.preventDefault;
}





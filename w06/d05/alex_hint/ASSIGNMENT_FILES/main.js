// this is my file
// ---------------
// console.log('hi');

// wait until the DOM has loaded
  // window.onload = function() {
  //   var yayButton = document.getElementById('yay');
  //   var nayButton = document.getElementById('nay');
  //   yayButton.addEventListener("click", say);
  //   nayButton.addEventListener("click", say);
  //   setUpListeners();
  // }

  // function say() {
  //   alert(this.id);
//   // }





// If you mouseover alderaan or death-star their respective names should appear.
var alderaan = document.getElementById('alderaan');
var deathStar = document.getElementById('death-star');

alderaan.addEventListener("mouseover", function(e){
  alderaan.innerHTML = "Alderaan";
});
alderaan.addEventListener("mouseout", function(e){
  alderaan.innerHTML = "";
});

deathStar.addEventListener("mouseover", function(e){
  deathStar.innerHTML = "Death Star";
});
deathStar.addEventListener("mouseout", function(e){
  deathStar.innerHTML = "";
});

//If you click on button#never the alderaan should be removed.
// Bonus
// Wait 5 seconds before removing the Alderaan div to heighten the drama!
//setTimeout(function(){alert("Hello")},3000); -- will wait 3 seconds before saying Hello
var buttonNever = document.getElementById("never");

buttonNever.addEventListener("click", function(e){
  //debugger;
  setTimeout(function(){alderaan.parentElement.removeChild(alderaan)} , 5000);
});

//If you click on a#tell make a new form with a text with the name location and a button with the id of secret-coordinates
var aTag = document.getElementById('tell');

aTag.addEventListener("click", function(e){
  e.preventDefault();
  var form = document.createElement('form');
  var input = document.createElement('input');
  input.name = 'location';
  input.placeholder = 'location';
  form.appendChild(input);
  var button = document.createElement('button');
  button.id = "secret-coordinates";
  form.appendChild(button);
  document.body.appendChild(form);

//If you type Yavin 4 into input[name=location] the body background should turn green otherwise make the body red
  var secretCoButton = document.getElementById('secret-coordinates');
  var secretInput = document.getElementsByTagName('input')[1];

  secretCoButton.addEventListener("click", function(e){
    e.preventDefault();
    //debugger;
    if (secretInput.value === "Yavin 4") {
      document.body.style.background = "green";
    } else {
      document.body.style.background = "red";
    }
  });
});

//If you press H a text input with the name help-me and a button with the id secret-message should appear.
document.body.addEventListener("keypress", function(e) {
  var letter = String.fromCharCode(e.keyCode);
  if (letter === 'h') {
    //debugger;
    var input = document.createElement('input');
    input.name = "Help me";
    input.placeholder = "Help me";
    var button = document.createElement('button');
    button.id = "secret-message";
    document.body.appendChild(input);
    document.body.appendChild(button);
    //debugger;

//If you type Help me Obi Wan, you're my only hope into input[name=help-me] the background should change to blue.
    var inputHelpMe = document.getElementsByTagName('input')[2];
    var buttonHelpMe = document.getElementById('secret-message');
    buttonHelpMe.addEventListener("click", function(e) {
      if (inputHelpMe.value === "Help me Obi Wan, you're my only hope") {
        document.body.style.background = "blue";
      }
    });
  }

});





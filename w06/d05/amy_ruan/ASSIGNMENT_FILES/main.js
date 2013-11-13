// this is my file
// ---------------
console.log('hi');

var alderaan = document.getElementById("alderaan");
var deathstar = document.getElementById("death-star");
var fnToOnMouseOver = function(){
  this.innerHTML += this.id
}
alderaan.addEventListener("mouseover",fnToOnMouseOver);
deathstar.addEventListener("mouseover",fnToOnMouseOver);

var never = document.getElementById("never")
var tell = document.getElementById("tell")
var fnToOnClickNever = function(){
  alderaan.parentElement.removeChild(alderaan)
}

var fnToOnClickTell = function(){
  var form = document.createElement('form');
  document.body.appendChild(form)

  var text_input = document.createElement('input')
  text_input.type = 'text';
  text_input.name= "location";

  var button_input = document.createElement('button')
  button_input.id = "secret-coordinates"

  var newForm = document.getElementsByTagName('form')
  newForm[0].appendChild(text_input);
  newForm[0].appendChild(button_input);

  var textbox = document.getElementsByName('location')[0];

  var fnToCheckInput = function() {
    var text = document.getElementsByName('location');
    var text_value = text[0].value
    if (text_value === "Yavin 4") {
      document.body.style.backgroundColor = "green"
    }
    else {
      document.body.style.backgroundColor = "red"
    }
  }
  textbox.addEventListener("keydown", fnToCheckInput);
}

tell.addEventListener("click",fnToOnClickTell)
never.addEventListener("click",fnToOnClickNever)


function keyDownSurprise(event) {
  var letter = String.fromCharCode(event.keyCode);
  // keyCode always returns the unicode value of the uppercase version of a character
  if (letter == "H") {
    var text_input = document.createElement('input')
    text_input.type = 'text';
    text_input.name= "help-me";

    var button_input = document.createElement('button')
    button_input.id = "secret-message"

    document.body.appendChild(text_input);
    document.body.appendChild(button_input);

    var textbox = document.getElementsByName('help-me')[0];

    var fnToCheckInput = function() {
      var text = document.getElementsByName('help-me')
      var text_value = text[0].value;
      console.log(text_value);
      if (text_value === "Obi Wan") {
        // console.log("obi")
        document.body.style.backgroundColor = "blue"
      }
      else{
        // console.log("NOT obi")
        document.body.style.backgroundColor = "red"
      }
    }

    textbox.addEventListener("keyup", fnToCheckInput);
  }

}

document.body.addEventListener("keyup", keyDownSurprise);

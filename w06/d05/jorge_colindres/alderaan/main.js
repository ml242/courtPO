var alderaan = document.getElementById('alderaan');
var deathStar = document.getElementById('death-star');
var buttonNever = document.getElementById('never');
var tellLink = document.getElementById('tell');
var secretForm = document.getElementById('secret-form');
var locationInput = document.getElementById('location');
var helpForm = document.getElementById('help-form');
var helpMe = document.getElementById('help-me');

window.onload = function(){
  alderaan.addEventListener('mouseover', function(){
    thisNewText.call(this, 'Alderaan');
  });
  deathStar.addEventListener('mouseover', function(){
    thisNewText.call(this, 'Deathstar');
  });
  buttonNever.addEventListener('click', function(){
    window.setTimeout(function(){
      alderaan.remove();
    }, 5000);
  });
  tellLink.addEventListener('click', function(e){
    revealItem(secretForm);
    e.preventDefault();
  });
  locationInput.addEventListener('keyup', function(){
    checkInputValue.call(this, 'Yavin 4', 'green', 'red');
  });
  document.body.addEventListener('keypress', function(e){
    var letterH = String.fromCharCode(e.which);
    if (letterH === 'h'){
      revealItem(helpForm);
    }
  });
  helpMe.addEventListener('keyup', function(){
    checkInputValue.call(this, "Help me Obi Wan, you're my only hope", 'blue', 'white');
  });
};

function changeBodyBgColor(color){
  document.body.style.backgroundColor = color;
}
function revealItem(item){
  item.className = 'block';
}
function thisNewText(content){
  this.textContent = content;
}
function checkInputValue (textValue, colorTrue, colorFalse){
  if (this.value === textValue){
    changeBodyBgColor(colorTrue);
  } else {
    changeBodyBgColor(colorFalse);
  }
}

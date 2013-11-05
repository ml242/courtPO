// this is my file
// ---------------
console.log('hi');

var alderaan = document.getElementById('alderaan'),
    deathStar = document.getElementById('death-star'),
    tell = document.getElementById('tell'),
    never = document.getElementById('never');

alderaan.addEventListener('mouseover', function(){
  alderaan.textContent = 'alderaan';
});

deathStar.addEventListener('mouseover', function(){
  deathStar.textContent = 'death star';
});

never.addEventListener('click', function(){
  setTimeout(function(){
    document.body.removeChild(alderaan);
  }, 5000);
});

tell.addEventListener('click', function(){
  if (document.getElementById('secret-coordinates') === null) {
    var form = document.createElement('form');

    var input = document.createElement('input');
    input.name = 'location';

    var button = document.createElement('button');
    button.id = 'secret-coordinates';

    form.appendChild(input);
    form.appendChild(button);
    document.body.appendChild(form);

    form.addEventListener('submit', function(e){
      e.preventDefault();
      if (input.value === 'Yavin 4') {
        document.body.style.background = 'green';
      } else {
        document.body.style.background = 'red';
      }
    });
  }
});

document.body.addEventListener('keypress', function(e){

  if (e.keyIdentifier === "U+0048" && document.getElementById('secret-message') === null) {

    var textInput = document.createElement('input');
    textInput.name = 'help-me';

    var button = document.createElement('button');
    button.id = 'secret-message';

    var form = document.createElement('form');
    form.appendChild(textInput);
    form.appendChild(button);
    document.body.appendChild(form);

    form.addEventListener('submit', function(e){
      e.preventDefault();
      if (textInput.value === "Help me Obi Wan, you're my only hope") {
        document.body.style.background = 'blue';
      }
    });
  }

});

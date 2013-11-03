// this is my file
// ---------------
window.onload = function(){
  console.log('hi');
  var ald = document.getElementById('alderon'),
      dStar = document.getElementById('death-star'),
      dest = document.getElementById('never'),
      link = document.getElementById('tell'),
      locForm;

  function hideElement () {
    var planetName = self.children[0];
    planetName.className = "hidden"

  }
  function showElement () {
    var planetName = this.children[0];
    planetName.className = "display"
  }
  function hideDiv () {
    this.className = "hidden"
    ald.className = "hidden"
  }
  function showForm () {
    var form = document.createElement('form'),
        textBox = document.createElement('input'),
        submitButton = document.createElement('input');

    submitButton.id = "secret-coordinates";
    submitButton.type = 'submit';
    textBox.placeholder ="location";
    textBox.name = "location";
    form.appendChild(textBox);
    form.appendChild(submitButton);
    document.body.appendChild(form);
    form.addEventListener("submit", function(e){
      changeBackground.call(this);
      e.preventDefault();
    })
  }
  function changeBackground () {
    var loc = this.children[0].value;
    if (loc == "Yavin 4") {
      document.body.style.backgroundColor = 'green'
    } else {
      document.body.style.backgroundColor = 'red' 
    }
  }

  ald.addEventListener("mouseover", showElement);
  dStar.addEventListener("mouseover", showElement);

  dest.addEventListener("click", hideDiv);

  link.addEventListener("click", function(e){
    showForm();
    e.preventDefault();
  });

  document.onkeypress = function(e) {
    document.onkeypress = "";
    if ( e.charCode == 72 ){
      var form = document.createElement('form');
      var textBox = document.createElement('input');
      var submitButton = document.createElement('input');
      form.id="help-form";
      submitButton.id = "secret-message";
      submitButton.type = 'submit';
      textBox.placeholder ="beg for help";
      textBox.name = "help-me";
      form.appendChild(textBox);
      form.appendChild(submitButton);
      document.body.appendChild(form);
      form.addEventListener("submit", function(e){
        obiSave.call(this);
        e.preventDefault();
      })
    }
  }

  function obiSave () {
    var mes = this.children[0].value;
    if (mes == "Help me Obi Wan, you're my only hope") {
      document.getElementById("help-form").className="hidden";
      document.body.style.backgroundColor = 'blue'
    }
  }
}

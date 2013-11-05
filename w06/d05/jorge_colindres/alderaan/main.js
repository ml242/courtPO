
function Galaxy(){
  this.buttonNever = document.getElementById('never');
  this.tellLink = document.getElementById('tell');
  this.secretForm = document.getElementById('secret-form');
  this.locationInput = document.getElementById('location');
  this.helpForm = document.getElementById('help-form');
  this.helpMe = document.getElementById('help-me');
  this.go =
  function(){
    self = this;

    this.alderaan.init();
    this.deathStar.init();

    this.hoverPlanets([theGalaxy.alderaan, theGalaxy.deathStar]);

    this.buttonNever.addEventListener('click', function(){
      window.setTimeout(function(){
        alderaan.remove();
      }, 5000);
    });

    this.tellLink.addEventListener('click', function(e){
      self.revealItem(self.secretForm);
      e.preventDefault();
    });

    this.inputColorfy(self.locationInput, 'Yavin 4', 'green', 'red');

    document.body.addEventListener('keypress', function(e){
      var letterH = String.fromCharCode(e.which);
      if (letterH === 'h'){
        self.revealItem(self.helpForm);
      }
    });

    this.inputColorfy(self.helpMe, "Help me Obi Wan, you're my only hope", 'blue', 'white');

  };
  this.hoverPlanets =
  function (planets){
    for (var i = 0; i < planets.length; i++) {
      planets[i].node.addEventListener('mouseover', function(){
        this.textContent = this.parent.name;
      });
    }
  };
  this.inputColorfy =
  function (element, textValue, colorTrue, colorFalse){
    var self = this;
    element.addEventListener('keyup', function(){
      self.checkInputValue.call(this, self, textValue, colorTrue, colorFalse);
    });
  };
  this.changeBodyBgColor =
  function (color){
    document.body.style.backgroundColor = color;
  };
  this.checkInputValue =
  function (galaxy, textValue, colorTrue, colorFalse){
    var self = galaxy;
    if (this.value === textValue){
      self.changeBodyBgColor(colorTrue);
    } else {
      self.changeBodyBgColor(colorFalse);
    }
  };
  this.revealItem = function (item){
    item.className = 'block';
  };
}

function Planet(name, node){
  this.name = name;
  this.node = node;
  this.init =
  function() {
    this.node.parent = this;
  };
}

theGalaxy = new Galaxy();

theGalaxy.alderaan = new Planet('Alderaan', document.getElementById('alderaan'));
theGalaxy.deathStar = new Planet('Deathstar', document.getElementById('death-star'));

theGalaxy.go();

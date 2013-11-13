window.onload = function(){
  var i = 0;
  var spacePointer = document.getElementById('space');
  var enterprisePointer = document.getElementById('enterprise');
  var resultsPointer = document.getElementById('results');
  var crewPointer = document.getElementById('crew');
  var crewMemberPointer;
  var vulcResPointer = document.getElementById('vulcan_residents');
  var vulcans = ["Sarek", "Skon", "Solkar", "Sybok"];
  var vulcanPlanet = document.getElementById('vulcan')

  for (var i = 0; i < vulcans.length; i++) {
    var vElem = document.createElement('div');
    vElem.textContent = vulcans[i];
    vElem.class = 'vulcan';
    vElem.addEventListener('click', beamUp)
    vulcResPointer.appendChild(vElem);
  };

  enterprisePointer.addEventListener('mouseover', function(e) {
    var xhr = new XMLHttpRequest();
    xhr.open('get', '/crew_members', false);
    xhr.send();
    var crew = JSON.parse(xhr.response);

    resultsPointer.textContent= crew.length + " members in the crew";
    //enterprisePointer.removeEventListener('mouseover');
  })

  enterprisePointer.addEventListener('click', function() {
    this.removeEventListener('click',arguments.callee,false);
    var xhr = new XMLHttpRequest();
    xhr.open('get', '/crew_members', false);
    xhr.send();
    var crew = JSON.parse(xhr.response);

    for (member in crew) {
      name = crew[member].name;
      var crewMember = document.createElement('div');
      crewMember.class = 'crew-member';
      crewMember.id = crew[member].id;
      crewMember.textContent = name;

      crewMember.addEventListener('click', memberInfo)

    crewPointer.appendChild(crewMember);
    };
  })

  enterprisePointer.addEventListener('dblclick', function() {
    displayForm();
  })

  function displayForm () {
    textB = document.createElement('input');
    textB.type = 'textbox';
    submit = document.createElement('button');
    submit.textContent = 'log it';
    crewPointer.appendChild(textB);
    crewPointer.appendChild(submit);
    submit.addEventListener('click', function(){
      sumbitForm(textB);
    })
  }

  function sumbitForm (textBvar) {
    var xhr = new XMLHttpRequest();
    xhr.open('post', '/captains_logs', false);
    oMyForm = new FormData();
    oMyForm.append('message', textBvar.value);
    xhr.send(oMyForm);
  }

  vulcanPlanet.addEventListener('click', function() {
    this.removeEventListener('click',arguments.callee,false);
    var xhr = new XMLHttpRequest();
    xhr.open('get', '/crew_members', false);
    xhr.send();
    var crew = JSON.parse(xhr.response);

    for (member in crew) {
      name = crew[member].name;
      var crewMember = document.createElement('div');
      crewMember.class = 'crew-member';
      crewMember.id = crew[member].id;
      crewMember.textContent = name;

      var xhr2 = new XMLHttpRequest();
      xhr2.open('get', '/crew_members/'+crew[member].id, false);
      xhr2.send();
      var info = JSON.parse(xhr2.response);
      crewMember.style.background = info.shirt_color;
      vulcResPointer.appendChild(crewMember);
    };
  })

  function memberInfo() {
    var xhr = new XMLHttpRequest();
    xhr.open('get', '/crew_members/'+this.id, false);
    xhr.send();
    var info = JSON.parse(xhr.response);
  }

  function beamUp () {
    crewPointer.appendChild(this);
    var xhr = new XMLHttpRequest();
    xhr.open('post', '/refugees', false);
    oMyForm = new FormData();
    oMyForm.append('name', this.textContent);
    xhr.send(oMyForm);
  }

  var t=setInterval(enemyArrives,5000);

  function enemyArrives () {
    var newCruiser = document.createElement('img');
    newCruiser.src = 'http://www.captainkwok.net/images/gsy-klingon-kodos.png';
    newCruiser.id = i;
    newCruiser.setAttribute('data-hp', 50)
    i++;
    newCruiser.addEventListener('click', hurtCruiser);
    document.body.appendChild(newCruiser);
  }

  function hurtCruiser () {
    cru=document.getElementById(this.id);
    if ( cru.attributes[2].value <= 10 ){
      cru.remove();
      notifyOfKill();
    } else { 
      cru.attributes[2].value -= 10;
    }
  }
  function notifyOfKill () {
    console.log('you got one');
    var notice = document.createElement('h2');
    notice.style.color = 'white';
    notice.style.color = 'white';
    notice.textContent = 'You got one!';
    document.body.appendChild(notice);
    var t=setTimeout(function(notice){debugger;},3000)
  }
}

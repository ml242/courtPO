// On #vulcan create 4 p tags with the class of vulcan from the following array
var vulcans = ['Sarek', 'Skon', 'Solkar', 'Sybok'];
var vulcanPlanet = document.getElementById('vulcanPlanet')
var enterprise = document.getElementById('enterprise')

  var xhr = new XMLHttpRequest();
  xhr.open("get", "/crew_members", false);
  xhr.send()
  var crewInfo = xhr.response
  var fullCrew = JSON.parse(crewInfo)

for (i=0; i<vulcans.length; i++) {
  var thisVulcan = document.createElement('p')
  thisVulcan.className = 'vulcan'
  thisVulcan.textContent = vulcans[i]
  vulcanPlanet.appendChild(thisVulcan)
  thisVulcan.addEventListener('dblclick', function(event) {
  event.preventDefault()
  enterprise.appendChild(this)
})
}
document.body.appendChild(vulcanPlanet)



enterprise.addEventListener("mouseover", function(event) {
  event.preventDefault()
  var refugeeNum = vulcanPlanet.children.length
  var crewNum = document.getElementsByClassName('crew').length
  var totalPassengers = '\n Crew: ' + crewNum + '\n' + "Refugees: " + refugeeNum
  enterArticle = document.getElementsByTagName('article')[0]
  enterArticle.textContent += totalPassengers
})


//When you double click on Vulcan it should beam down the crew of the Enterprise.
//Display each crewmember as a `p` tag and make their backgrounds match their shirt color.

vulcanPlanet.addEventListener('dblclick', function(event) {
  event.preventDefault()
  for (var i = 0; i < fullCrew.length; i++) {
    var crewP = document.createElement('p')
    crewP.id = fullCrew[i].name
    crewP.class = 'crew'
    crewP.textContent = fullCrew[i].name
    vulcanPlanet.appendChild(crewP)
  }
})

function birdOfPreyClick() {
  var health = document.getElementById('health')
  health.textContent -= 1
  if (health.textContent < 0) {
    var birdOfPrey = document.getElementById('bird-of-prey')
    birdOfPrey.className = "hidden"
  }
}

function birdOfPreyDoubleClick() {
  var health = document.getElementById('health')
  health.textContent -= 10
    if (health.textContent < 0) {
      var birdOfPrey = document.getElementById('bird-of-prey')
      birdOfPrey.className = "hidden"
  }
}

var birdOfPrey = document.getElementById('bird-of-prey')
birdOfPrey.addEventListener("click", birdOfPreyClick)
birdOfPrey.addEventListener("dblclick" , birdOfPreyDoubleClick)


// single clicking on a ship reduces it’s health by `10`

// double clicking on a ship reduces it’s health by `50`

// When a ship’s health is at 0 it should be removed from the page.

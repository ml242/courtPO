function StarWars() {
  var universe = document.getElementsByTagName("html")[0]
  var deathStar = document.getElementById("death-star")
  var alderaan = document.getElementById("alderaan")
  var neverButton = document.getElementById("never")
  var tell = document.getElementById("tell")
  var secret = document.getElementById("secret-coordinates")
  var secretForm = secret.children[0]
  var helpMe = document.getElementById("help-me")
  var helpMeForm = helpMe.children[0]

  showName = function() {
    var thisChild = this.children[0]
    thisChild.className = ""
  }

  hideName = function() {
    var thisChild = this.children[0]
    thisChild.className = "hidden"
  }
  destroyAlderaan = function() {
    alderaan.className = "hidden"
  }

  addEventListener.call(deathStar, "mouseover", showName)
  addEventListener.call(deathStar, "mouseout", hideName)
  addEventListener.call(alderaan, "mouseover", showName)
  addEventListener.call(alderaan, "mouseout", hideName)
  neverButton.addEventListener("click", destroyAlderaan)
  tell.addEventListener("click", function(event) {
    secret.className = ""
    event.preventDefault()
  })

  secretForm.addEventListener("input", function(){
    if (secretForm.value === "Yarvin 4") {
      universe.style.background = "green"
    } else {
      universe.style.background = "red"
    }
  })

  window.addEventListener("keydown", function(e) {
    if (e.keyCode === 72) {
      helpMe.className = ""
    }
  })

  helpMeForm.addEventListener("input", function(){
    if (helpMeForm.value === "Help me Obi Wan, you're my only hope") {
      universe.style.background = "#5555EE"
    }
  })
}

StarWars()







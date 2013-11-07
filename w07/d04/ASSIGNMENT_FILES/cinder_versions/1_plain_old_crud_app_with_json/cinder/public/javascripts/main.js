var KickHash = KickHash || {};

KickHash.travis = function() {
  alert("Hello! I am Travis! Josh, the browser, must have finished loading so he called me\nI, travis, am going to make a contract with the browser to call natasha when I click on the button!");

  $("#button").on("click", KickHash.natasha);
}

$( document ).ready(KickHash.travis);


KickHash.natasha = function() {

  var id = 3;
  var url = "cats/" + id + ".json";

  alert("I am Natasha! I going to run an asynchronous AJAX request that gets a single cat to display with id number " + id + "at url " + url + "\n and then I will call enoch whenever I get the cat response back!\n I will be doing work immediately aftewards.");

  $.ajax({
    type: "GET",
    url: url
  }).done(KickHash.enoch)

  KickHash.natashaDoesWork();
}

KickHash.enoch = function(data) {
  var audio = new Audio("http://soundjax.com/reddo/18426%5EDOORBELL.mp3")
  audio.play();

  console.log("I am Enoch, I just got called because we must have gotten the request back from the server! Here is the data!")
  console.log(data)
}


KickHash.natashaDoesWork = function() {
  var natashaWorkCount = 0;
  setInterval(function() {
    console.log(natashaWorkCount + " Natasha is working!");
  }, 100);
}


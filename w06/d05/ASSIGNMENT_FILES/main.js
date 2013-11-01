// this is my file
// ---------------
console.log('hi');

// wait until the DOM has loaded
  window.onload = function() {
    var yayButton = document.getElementById('yay');
    var nayButton = document.getElementById('nay');
    yayButton.addEventListener("click", say);
    nayButton.addEventListener("click", say);
    setUpListeners();
  }

    function say() {
      alert(this.id);
    }

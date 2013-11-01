// ask for the user's name and append it to the dom in an h1 tag

for (var i = 0; i < 4; i++) {
  var userName = prompt("What's your name?");
  var h1Tag = document.createElement('h1');
  h1Tag.textContent = userName;
  document.body.appendChild(h1Tag);
}

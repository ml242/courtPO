function $(query) {
  var name = query.slice(1, query.length);
  if(query[0] === "."){
    return document.getElementsByClassName(name);
  } else if (query[0] === "#" ) {
    return document.getElementById(name);
  } else {
    return document.getElementsByTagName(query);
  }
}

var a = parseInt(prompt("enter number"), 10);
var method = prompt("enter: plus, minus, mult, or div");
var b = parseInt(prompt("enter number"), 10);

function plus(a,b) {
  return (a + b);
}

function minus(a,b) {
  return (a - b);
}

function multiply(a,b) {
  return (a * b);
}

function divide(a,b) {
  return (a / b);
}

if(method === "plus"){
  alert(plus(a,b));
} else if(method === "minus"){
  alert(minus(a,b));
} else if(method === "mult"){
  alert(multiply(a,b));
} else if(method === "div"){
  alert(divide(a,b));
}

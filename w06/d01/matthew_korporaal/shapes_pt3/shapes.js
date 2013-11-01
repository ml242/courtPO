var rectangle = {
  length: 4,
  width: 4
};
var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};
function isSquare(rectangle) {
  return rectangle.length === rectangle.width;
}
function isEquilateral(triangle) {
  return (triangle.sideA === triangle.sideB &&
    triangle.sideB === triangle.sideC)
}
function isIsosceles(triangle) {
  // If tri is not equilateral, check if 2 side are the same
  if (!isEquilateral(triangle)) {
    return (triangle.sideA === triangle.sideB ||
      triangle.sideA === triangle.sideC ||
      triangle.sideB === triangle.sideC)
  } else {
    return false;
  }
}

function calcArea(triangle) {
  var p = calcPerimeterHalf(triangle);
  return Math.sqrt(p * ((p - triangle.sideA) * (p - triangle.sideB) * (p - triangle.sideC)));
}

function calcPerimeterHalf(triangle) {
  return ((parseFloat(triangle.sideA + triangle.sideB + triangle.sideC)) / 2);
}

function isObtuse(triangle) {
  // If a^2 + b^2 < c^2, its obtuse if c is largest side
  var sidesArray = sortKeyValues(triangle);
  // Square each and compare
  aSq = parseFloat(sidesArray[0] * sidesArray[0]);
  bSq = parseFloat(sidesArray[1] * sidesArray[1]);
  cSq = parseFloat(sidesArray[2] * sidesArray[2]);
  if ((aSq + bSq) < cSq) {
    return true;
  } else {
    return false;
  }
}
// Returns sorted float array of triangle sides small->large
function sortKeyValues(triangle) {
  // create array of values and sort
  var sidesArray = new Array();
  for (key in triangle) { sidesArray.push(triangle[key]); }
  return sidesArray;
}

console.log("Rectangle isSquare? " + isSquare(rectangle));
console.log("Triangle isEquilateral? " + isEquilateral(triangle));
console.log("Triangle isIsosceles? " + isIsosceles(triangle));
console.log("Triangle calcArea? " + calcArea(triangle));
console.log("Triangle isHypotenuse? " + isObtuse(triangle));


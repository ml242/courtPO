var rectangle = {
  length: 4,
  width: 4
};

function isSquare(rectangle) {
  return rectangle.length == rectangle.width;
};

function areaOfRectangle(rectangle) {
  return rectangle.length * rectangle.width;
};

function perimeter(rectangle) {
  return 2 * (rectangle.length + rectangle.width);
};

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

function isEquilateral(triangle) {
  return triangle.sideA == triangle.sideB && triangle.sideB == triangle.sideC;
};

function isIsosceles(triangle) {
  return triangle.sideA == triangle.sideB || triangle.sideB == triangle.sideC;
};

function areaOfTriangle(triangle) {
  // square root of p(p-a)(p-b)(p-c) where p is half the parimeter
  var parimeter = (triangle.sideA + triangle.sideB + triangle.sideC)/2;
  var beforeMultiplying = (parimeter-triangle.sideA)*(parimeter-triangle.sideB)*(parimeter-triangle.sideC);
  return Math.sqrt(parimeter * beforeMultiplying)
};

function isObtuse(triangle) {
  //If a^2 + b^2 < c^2
  var allSides = [triangle.sideA, triangle.sideB, triangle.sideC];
  allSides.sort();
  return (Math.pow(allSides[0], 2) + Math.pow(allSides[1], 2)) < Math.pow(allSides[2], 2);
};

console.log(isSquare(rectangle));
console.log(areaOfRectangle(rectangle));
console.log(perimeter(rectangle));
console.log(isEquilateral(triangle));
console.log(isIsosceles(triangle));
console.log(areaOfTriangle(triangle));
console.log(isObtuse(triangle));

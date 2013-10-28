var rectangle = {
  length: 4,
  width: 4
};

function isSquare(rectangle) {
  if (rectangle.length == rectangle.width){
    return true;
  }
};

console.log(isSquare(rectangle));

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

function isEquilateral(triangle) {
  return triangle.sideA == triangle.sideB && triangle.sideB == triangle.sideC };

function isIsocoles(triangle) {
  return triangle.sideA == triangle.sideB || triangle.sideA == triangle.sideC || triangle.sideB == triangle.sideC };

function calcArea(triangle){
  var a = triangle.sideA;
  var b = triangle.sideB;
  var c = triangle.sideC;
  var perimeter = a + b + c;
  var p = perimeter / 2;
  return (Math.sqrt(p*(p - a)*(p - b)*(p - c)));
}

var simpleTriangle = function(triangle) {
  var a = triangle.sideA;
  var b = triangle.sideB;
  var c = triangle.sideC;
  return [a, b, c].sort();
}

function isObtuse(simpleTriangle) {
  return (simpleTriangle[0]^2 + simpleTriangle[1]^2) < (simpleTriangle[2]^2);
};

console.log(isEquilateral(triangle));

console.log(isIsocoles(triangle));

console.log(calcArea(triangle));

console.log(isObtuse(simpleTriangle));
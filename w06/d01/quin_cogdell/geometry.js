var rectangle = {
  length: 4,
  width: 4
};

var isSquare = function(rectangle){
  return rectangle.length === rectangle.width;
}

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

// converts triangle into an array of side lengths sorted from smallest to largest
var simpleTriangle = function(triangle) {
  var a = triangle.sideA;
  var b = triangle.sideB;
  var c = triangle.sideC;
  return [a, b, c].sort();
}

//because array is sorted, if a == c then equilateral
var isEquilateral = function(triangle) {
  //return triangle.sideA === triangle.sideB === triangle.sideC;
  var tri = simpleTriangle(triangle)
  //return tri[0] === tri[1] === tri[2];
  return tri[0] === tri[2];
}

var isIsosceles = function(triangle) {
  // var a = triangle.sideA;
  // var b = triangle.sideB;
  // var c = triangle.sideC;
  // return (a === b) || (a===c) || (b===c);
  //return (tri[0] === tri[1]) || (tri[0] === tri[2]) || (tri[1]=== tri[2]);

  // should be able to only check if a = b or b = c since the array is now sorted, if a == c then equilateral
  var tri = simpleTriangle(triangle)
  return (tri[0] === tri[1]) || (tri[1] === tri[2]);
}

// uses Heron's Formula http://www.mathopenref.com/heronsformula.html
var calcArea = function(triangle) {
  var tri = simpleTriangle(triangle);
  // p is half the perimeter
  var p = (tri[0] + tri[1] + tri[2])/2;
  return Math.sqrt(p*(p-tri[0])*(p-tri[1])*(p-tri[2]))
}

var isObtuse = function(triangle) {
  var tri = simpleTriangle(triangle)
  return (Math.pow(tri[0],2) + Math.pow(tri[1],2) < Math.pow(tri[2],2));
}


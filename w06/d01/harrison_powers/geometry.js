var rectangle = {
  length: 4,
  width: 4
}

function isSquare(){
  return rectangle.length == rectangle.width
}

function area(){
  return (rectangle.length * rectangle.width);
}

function perimeter(){
  return ((rectangle.length*2)+(rectangle.width*2));
}

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
}

function isEquilateral(){
  return (triangle.sideA == triangle.sideB) && (triangle.sideB == triangle.sideC)
}

function isIsosceles(){
  return (triangle.sideA == triangle.sideB) || (triangle.sideA == triangle.sideC) || (triangle.sideB == triangle.sideC)
}

function calcArea(){
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

function isObtuse(){
 console.log('this homework is obtuse');
 var a = simpleTriangle[0];
 var b = simpleTriangle[1];
 var c = simpleTriangle[2];
 return ( (a*a + b*b) < (c*c) )
}

isSquare();
area();
perimeter();
isEquilateral();
isIsosceles();
calcArea();
isObtuse();

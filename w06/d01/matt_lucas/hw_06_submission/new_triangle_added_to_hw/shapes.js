function Rectangle(length, width) {
  var x = length,
      y = width;
};

var rectangle = new Rectangle(4, 4);


Rectangle.prototype.isSquare = function() {
  return (this.x === this.y);
};

Rectangle.prototype.area = function() {
  return (this.x * this.y);
};

Rectangle.prototype.perimeter = function() {
  return ((this.x * 2) + (this.y * 2));
};

function isSquare(rectangle) {
  if (rectangle.length == rectangle.width){
    return true;
  }
};

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

var isObtuse = function(triangle) {   var tri = simpleTriangle(triangle) 
return (Math.pow(tri[0],2) + Math.pow(tri[1],2) < Math.pow(tri[2],2)); };



//
console.log(rectangle.isSquare());

console.log(isSquare(rectangle));

console.log(isEquilateral(triangle));

console.log(isIsocoles(triangle));

console.log(calcArea(triangle));

console.log(isObtuse(triangle));
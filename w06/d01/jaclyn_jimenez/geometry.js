function Rectangle(sides) {
  this.length = sides.length
  this.width = sides.width
}


Rectangle.prototype.isSquare = function() {
  return this.length == this.width;
};

Rectangle.prototype.areaOfRectangle = function() {
  return this.length * this.width;
};

Rectangle.prototype.perimeter = function() {
  return 2 * (this.length + this.width);
};

// var triangle = {
//   sideA: 3,
//   sideB: 4,
//   sideC: 4
// };

// function isEquilateral(triangle) {
//   return triangle.sideA == triangle.sideB && triangle.sideB == triangle.sideC;
// };

// function isIsosceles(triangle) {
//   return triangle.sideA == triangle.sideB || triangle.sideB == triangle.sideC;
// };

// function areaOfTriangle(triangle) {
//   // square root of p(p-a)(p-b)(p-c) where p is half the parimeter
//   var parimeter = (triangle.sideA + triangle.sideB + triangle.sideC)/2;
//   var beforeMultiplying = (parimeter-triangle.sideA)*(parimeter-triangle.sideB)*(parimeter-triangle.sideC);
//   return Math.sqrt(parimeter * beforeMultiplying)
// };

// function isObtuse(triangle) {
//   //If a^2 + b^2 < c^2
//   var allSides = [triangle.sideA, triangle.sideB, triangle.sideC];
//   allSides.sort();
//   return (Math.pow(allSides[0], 2) + Math.pow(allSides[1], 2)) < Math.pow(allSides[2], 2);
// };

var r1 = new Rectangle({length: 4,
  width: 4})

console.log(r1.isSquare());
console.log(r1.areaOfRectangle());
console.log(r1.perimeter());
// console.log(isEquilateral(triangle));
// console.log(isIsosceles(triangle));
// console.log(areaOfTriangle(triangle));
// console.log(isObtuse(triangle));

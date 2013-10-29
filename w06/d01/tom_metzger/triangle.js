// I need to work on making the functions objects inside of an object and calling self.function


var rectangle = {
  length: 4,
  width: 4
};


var isSquare = function(rectangle){
  if (rectangle.length === rectangle.width){
    return "This is a square"
  } else {
    "This is not a square"
  }
};

var area = function(rectangle){
  return rectangle.length * rectangle.width
};

var perimeter = function(rectangle){
  return rectangle.length * 2 + rectangle.width * 2
};



console.log(isSquare(rectangle));
console.log(area(rectangle));
console.log(perimeter(rectangle));

// var rectangle = {
//   length: 4,
//   width: 4,
//   isSquare: function(){
//     if (self.length === self.width){
//       return "This is a square-- self method"
//     } else {
//       "This is not a square -- self method"
//     }
//   }
// };

// console.log(rectangle.isSquare());


var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

// var isTriangle = function(triangle){
//   var triArray = [triangle.sideA, triangle.sideB, triangle.sideC].sort();
//   if (triArray[0]+ triarray[1] > triarray[2]){
//     return "This is a Triangle";
//   } else {
//     return "this is not a triangle";
//   }
// };

var isEquilateral = function(triangle){
  if (triangle.sideA === triangle.sideB && triangle.sideB === triangle.sideC){
    return "This triangle is equilateral";
  } else {
    return "This is not an equilateral triangle";
  }
};

var isIsosceles = function(triangle){
  if (triangle.sideA === triangle.sideB || triangle.sideB === triangle.sideC){
    return "This triangle is isosceles";
  } else {
    return "This is not an isosceles triangle";
  }
};

var calcArea = function(triangle){
  var perimeter = triangle.sideA + triangle.sideB + triangle.sideC;
  return Math.sqrt(perimeter * (perimeter - triangle.sideA) * (perimeter - triangle.sideB) * (perimeter - triangle.sideC))
};



var isObtuse = function(triangle){
  var triArray = [triangle.sideA, triangle.sideB, triangle.sideC].sort();
  if (Math.pow(triArray[0],2) + Math.pow(triArray[1],2) < Math.pow(triArray[2],2)){
    return "This is and obtuse triangle";
  } else if (Math.pow(triArray[0],2) + Math.pow(triArray[1],2) > Math.pow(triArray[2],2)){
    return "This is an acute triangle";
  } else {
    "This is a right triangle";
  }
}


console.log(isEquilateral(triangle));
console.log(isIsosceles(triangle));
console.log(calcArea(triangle));
console.log(isObtuse(triangle));





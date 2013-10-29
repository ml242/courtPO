var rectangle = {
  length: 4,
  width: 4
};

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

var simpleTriangle = function(triangle) {
  var a = triangle.sideA;
  var b = triangle.sideB;
  var c = triangle.sideC;
  return [a, b, c].sort(function(a,b){return a-b});
}

isSquare=function(length, width) {
  if (length == width) {
    return true;
  }
  else {
    return false;
  }
}

area = function(length, width) {
  var area_answer = length*width;
  return area_answer;
}

perimeter = function(length, width) {
  var perimeter_answer = (length*2) + (width*2);
  return perimeter_answer;
}

isEquilateral = function(side1, side2, side3) {
  var equilateral = (side1==side2 && side1==side3);
  return equilateral;
}

isIsosceles = function(side1, side2, side3) {
  var isosceles = (
    side1==side2 ||
    side1==side3 ||
    side2==side3);
  return isosceles;
}


// triangleArea = function(triangle) {
//   var area_answer = (simpleTriangle(triangle)[0] + simpleTriangle(triangle)[1])/2;
//   return area_answer;
// }

triangleArea = function(triangle) {
  p = (triangle.sideA + triangle.sideB + triangle.sideC)/2;
  weird_sum = p*(p-triangle.sideA)*(p-triangle.sideB)*(p-triangle.sideC);
  var area = Math.sqrt(weird_sum);
  return area;
}

isObtuse = function(triangle) {
  if ( (Math.pow(simpleTriangle(triangle)[0], 2) + Math.pow(simpleTriangle(triangle)[1], 2)) < Math.pow(simpleTriangle(triangle)[2], 2) ) {
    return true;
  }
  else {
    return false;
  }
}




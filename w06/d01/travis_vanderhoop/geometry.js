var rectangle = {
  length: 4,
  width: 4
};

var triangle = {
    sideA: 3,
    sideB: 4,
    sideC: 4
};

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

var simpleTriangle = function(triangle) {
  var a = triangle.sideA;
  var b = triangle.sideB;
  var c = triangle.sideC;
  return [a, b, c].sort();
}

triangleArea = function(triangle) {
  var area_answer = (simpleTriangle(triangle)[0] + simpleTriangle(triangle)[1])/2;
  return area_answer;
}





var rectangle = {
  length: 4,
  width: 4
};

var isSquare = function(input) {
  return input.length == input.width;
};

var area = function(input) {
  return (input.length * input.width);
};

var perimeter = function(input) {
  return (2 * input.length) + (2 * input.width);
};

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};

var isEquilateral = function(input) {
  return input.sideA == input.sideB == input.sideC;
};

var isIsosceles = function(input) {
  if (input.sideA == input.sideB) {
    return true;
  }
  else if (input.sideA == input.sideC) {
    return true;
  }
  else if (input.sideB == input.sideC) {
    return true;
  }
  else {
    return false;
  }
};

var calcArea = function(input) {
  var p = (input.sideA + input.sideB + input.sideC)/2;
  return Math.sqrt(p * (p - input.sideA) * (p - input.sideB) * (p - input.sideC));
};

var isObtuse = function(input) {
  return Math.pow(input.sideA, 2) + Math.pow(input.sideB, 2) < Math.pow(input.sideC, 2);
};
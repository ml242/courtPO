var rectangle = {
  length: 4,
  width: 2
};

var triangle = {
  sideA: 3,
  sideB: 2,
  sideC: 4
};

rectangle.isSquare = function() {
  return this.length === this.width;
}

rectangle.area = function() {
  return this.length * this.width;
}

rectangle.perimeter = function() {
  return 2 * (this.length + this.width);
}

// Check out Heron's formula : http://en.wikipedia.org/wiki/Heron's_formula
triangle.area = function() {
  var halfPerimeter = (this.sideA + this.sideB + this.sideC) / 2;
  var area = Math.sqrt((halfPerimeter) * (halfPerimeter - this.sideA) * (halfPerimeter - this.sideB) * (halfPerimeter - this.sideC));
  return area;
}

triangle.isEquilateral = function() {
  return this.sideA === this.sideB && this.sideA === this.sideC;
}

triangle.isIsosceles = function() {
  return this.sideA === this.sideB || this.sideA === this.sideC || this.sideB === this.sideC;
}

// A triangle that has one interior angle that measures more than 90° is an obtuse triangle or obtuse-angled triangle.
// If the greatest side length is c, then a^2 + b^2 < c^2.
// Check out: http://en.wikipedia.org/wiki/Triangle#By_internal_angles
triangle.isObtuse = function() {
  var sides = [this.sideA, this.sideB, this.sideC];
  sides.sort();
  if (Math.pow(sides[0], 2) + Math.pow(sides[1], 2) < Math.pow(sides[2], 2)) {
    return true;
  } else {
    return false;
  }
}
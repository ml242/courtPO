var rectangle = {
  length: 4,
  width: 4

  isSquare: function() {
    if (this.length == this.width) {
      return true;
    } else {
      return false;
    }
  },

  area: function() {
    return this.length * this.width
  },

  perimeter: function() {
    return (this.length * 2) + (this.width * 2)
  }
};

console.log(rectangle.isSquare());
console.log(rectangle.area());
console.log(rectangle.perimeter());


var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4

  if (triangle.sideA == triangle.sideB && triangle.sideB == triangle.sideC) {
    return true;
  } else {
    return false;
  }

};



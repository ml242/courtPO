var rectangle = {
  sides: {
    length: 4,
    width: 4
  },
  isSquare: function() {
    return this.sides.length === this.sides.width;
  },
  area: function() {
    // calculate area based on sides.length and sides.width
    return this.sides.length * this.sides.width;
  },
  perimeter: function() {
    return ((this.sides.length * 2) + (this.sides.width * 2));
  }
}





var rectangle = {
  length: 4,
  width: 4,
  area: function() {
    return this.length * this.width
  },
  isSquare: function() {
    if (this.length==this.width) {
      return true;
    } else {
      return false;
    }
  },
  calculatePerimeter: function() {
    return this.length*2 + this.width*2;
  }
};

var triangle = {
  side_1 : 3,
  side_2 : 4,
  side_3 : 5,
  calculatePerimeter: function() {
    return this.side_1 + this.side_2 + this.side_3;
  },
  isEquilateral: function() {
    if(this.side_1==this.side_2 && this.side_2==this.side_3) {
      return true; 
    } else {
      return false; 
    }
  },
  isIsosceles: function() {
    if(this.side_1==this.side_2 || this.side_2==this.side_3 || this.side_1==this.side_3) {
      return true; 
    } else {
      return false; 
    }
  },
  calcArea: function() {
    var p = this.calculatePerimeter();
    return Math.sqrt(p*(p-this.side_1)*(p-this.side_2)*(p-this.side_3));
  },
  isObtuse: function() {
    var sidesSorted = [this.side_1, this.side_2, this.side_3].sort();
    console.log([sidesSorted[0],sidesSorted[1]].join(" "))
    var hHypo =  Math.sqrt( Math.pow((sidesSorted[0]),2) + Math.pow((sidesSorted[1]),2) );
    console.log("h" + hHypo);
    var rHypo = sidesSorted[2];
    console.log("r" + rHypo);
    if( rHypo > hHypo ) {
      return true
    } else {
      return false
    }
  }
}

console.log(triangle.calculatePerimeter());
console.log(triangle.calcArea());
console.log("obtuse:" +triangle.isObtuse());

console.log("square:" + rectangle.isSquare() );
console.log(rectangle.calculatePerimeter());
console.log( rectangle.area() );

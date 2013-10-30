function Square(length, width) {
  this.length = length;
  this.width = width;
}

Square.prototype.isSquare = function() {
  if (this.length === this.width){
    return "This is a square";
  } else {
    return "This is not a square";
  }
}

Square.prototype.area = function() {
  return this.length * this.width;
}

Square.prototype.perimeter = function(){
  return this.length * 2 + this.width * 2
};


var s1 = new Square(5, 6);

console.log(s1.area());
console.log(s1.perimeter());
console.log(s1.isSquare());

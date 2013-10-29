var calculator = {
  sum: function(a, b) {
    return a + b
  },

  difference: function(a, b) {
    return a - b
  },

  multiplication: function(a, b) {
    return a * b
  },

  division: function(a, b) {
    return a / b;
  },
  modulus: function(a, b) {
    return a % b;
  },
  squareRoot: function(a) {
    return Math.sqrt(a)
  }
};

console.log(calculator.sum(2, 4));
console.log(calculator.squareRoot(100))

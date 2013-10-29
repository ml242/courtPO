var calculator = {
  add: function(a, b) {
    return a + b
  },
  subtract: function(a, b) {
    return a - b
  },
  multiply: function(a, b) {
    return a * b
  },
  divide: function(a, b) {
    return a / b
  },
  modulus: function(a, b) {
    return a % b
  },

  calculate: function() {
    a = parseInt(prompt("Enter first number"), 10);
    b = parseInt(prompt("Enter second number"), 10);
    operator = prompt("Enter operator (+, -, *, /, or %)");
    switch(operator) {
      case "+":
        console.log(this.add(a, b));
        break;
      case "-":
        console.log(this.subtract(a, b));
        break;
      case "*":
        console.log(this.multiply(a, b));
        break;
      case "/":
        console.log(this.divide(a, b));
        break;
      case "%":
        console.log(this.modulus(a, b));
        break;
    }
  }
};

calculator.calculate();

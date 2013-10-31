var calculator = {
  add: function(x, y) {
    return x + y;
  },
  subtract: function(x, y) {
    return x - y;
  },
  multiply: function(x, y) {
    return x * y;
  },
  divide: function(x, y) {
    return x / y;
  },
  run: function() {
    x = parseInt(prompt("first number please"), 10);
    y = parseInt(prompt("second number please"), 10);
    operator = prompt("operator please, like + or *");
    switch(operator) {
      case "+":
      console.log(this.add(x, y));
      break;
      case "-":
      console.log(this.subtract(x,y));
      break;
      case "*":
      console.log(this.multiply(x, y));
      break;
      case "/":
      console.log(this.divide(x, y));
      break;
    }
  }
};


calculator.run();
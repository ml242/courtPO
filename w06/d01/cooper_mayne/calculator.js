var calculator = {
  calculate: function() {
    switch(this.op) {
      case '*':
        return this.num1 * this.num2;
      case '+':
        return this.num1 + this.num2;
      case '-':
        return this.num1 - this.num2;
      case '/':
        return parseInt(this.num1) / parseInt(this.num2);
      case 'sqrt':
        return parseInt(this.num1) / parseInt(this.num2);
      case '/':
        return parseInt(this.num1) / parseInt(this.num2);
      default:
        return false
    }
  }
}

calculator.num1 = parseInt(prompt("give me anumber:"));
calculator.op =prompt("give me an operation:");
calculator.num2 = parseInt(prompt("give me anumber:"));

alert(calculator.calculate())

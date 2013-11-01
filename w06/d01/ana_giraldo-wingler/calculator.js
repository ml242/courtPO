var calculator = {
  getInput: function() {
    this.firstNum = parseInt(prompt("enter your first number."), 10);
    this.operator = prompt("enter +, -, *, or /");
    this.secondNum = parseInt(prompt("enter your second number."), 10);
  },
  operate: function() {
    if (this.operator === "+") {
      alert(this.firstNum + this.operator + this.secondNum + " makes " + (this.firstNum + this.secondNum));
    }
    else if (this.operator === "-") {
      alert(this.firstNum + this.operator + this.secondNum + " makes " + (this.firstNum - this.secondNum));
    }
    else if (this.operator === "*") {
      alert(this.firstNum + this.operator + this.secondNum + " makes " + (this.firstNum * this.secondNum));
    }
    else {
      alert(this.firstNum + this.operator + this.secondNum + " makes " + (this.firstNum / this.secondNum));
    }
  },
  calculate: function() {
    this.getInput();
    this.operate();
  }
}
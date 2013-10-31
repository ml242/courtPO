var calculator = {
  getFirst: function(){
    this.firstNum = parseInt(prompt("What's the first number?"), 10);
  },
  getSecond: function(){
    this.secondNum = parseInt(prompt("What's the second number?"), 10);
  },
  getOperator: function(){
    this.operator = prompt("What's the operator?");
  },
  calculate: function(){
    if (this.operator == '+'){
      return this.firstNum + this.secondNum;
    } else if (this.operator == '-'){
      return this.firstNum - this.secondNum;
    } else if (this.operator == '*'){
      return this.firstNum * this.secondNum;
    } else if (this.operator == '/'){
      return this.firstNum / this.secondNum;
    } else {
      return 'Error.';
    }
  },
  doMath: function(){
    this.getFirst();
    this.getSecond();
    this.getOperator();
    return this.calculate();
  }
};

console.log(calculator.doMath());

// create a calculator object

// create a sub-object with the mathematical operations in it

// create two operand prompts
// create one operator prompt

// create a function that calls the two operand prompts and the operator prompt and computes the result


var calculator = {
  // this prompt works when taken out slightly rearranged and tested alone
  getOp1: function() {
    this.op1 = parseFloat(prompt("what is the first operand?"));
  },
// this prompt works when taken out slightly rearranged and tested alone
  getOp2: function() {
    this.op2 = parseFloat(prompt("what is the second operand?"));
  },
// this prompt works when taken out slightly rearranged and tested alone
  chooseOp: function() {
    this.operator = prompt("Please choose an operator from the following list: +, -, *, /, %, sqrt");
  },
  askForAnotherStep: function() {
    this.another = prompt("Would you like to perform an additional operation?").charAt(y);
  }
  calculate: function(){
    this.getOp1();
    this.chooseOp();
    if (this.operator != "sqrt") {
      this.getOp2();
      }
    switch (this.operator) {
      case "+":
        return this.op1 + this.op2;
        break;
      case "-":
        return this.op1 - this.op2;
        break;
      case "*":
        return this.op1 * this.op2;
        break;
      case "/":
        return this.op1 / this.op2;
        break;
      case "%":
        return this.op1 % this.op2;
        break;
      case "sqrt":
        return Math.sqrt(this.op1);
        break;
    }
  }

console.log(calculator.calculate());


// THIS CALCULATE FUNCTION IS BROKEN, I WAS TRYING TO GET IT TO LOOP OPERATIONS BUT COULDNT FIGURE IT OUT...
  calculate: function(){
    this.getOp1();
    while (this.another != "y"){
      this.chooseOp();
      if (this.operator != "sqrt") {
        this.getOp2();
        }
      switch (this.operator) {
        case "+":
          return this.op1 + this.op2;
          break;
        case "-":
          return this.op1 - this.op2;
          break;
        case "*":
          return this.op1 * this.op2;
          break;
        case "/":
          return this.op1 / this.op2;
          break;
        case "%":
          return this.op1 % this.op2;
          break;
        case "sqrt":
          return Math.sqrt(this.op1);
          break;
      }
    this.askForAnotherStep();
  }
}



  // operations: {
  //   "add": +,
  //   "subtract": -,
  //   "multiply": *,
  //   "divide": /,
  //   "modulo": %
  // }

var calculator = {

  get_user_input: function() {
    var ops = prompt("Enter Calculator function:\n" +
      "Separate by spaces.\n" +
      "Example: 4 * 5 or sqrt 36\n" +
      "Operands supported: + - * / % or sqrt").split(" ");
    if (ops.length === 2 && ops[0] === "sqrt") {
      this.operator = ops[0];
      this.op1 = parseFloat(ops[1]);
    } else {
      debugger
      this.operator = ops[1];
      this.op1 = parseFloat(ops[0]);
      this.op2 = parseFloat(ops[2]);
    }
  },

  calculate: function() {
    this.get_user_input()
    switch(this.operator) {
    case "sqrt":
    this.sqRoot();
    break;
    case "+":
    this.add();
    break;
    case "-":
    this.sub();
    break;
    case "*":
    this.mul();
    break;
    case "/":
    this.div();
    break;
    case "%":
    this.mod();
    break;
    default:
    alert("Params incorrect");
    }
  },

  sqRoot: function() {
  console.log("Sqrt(" + this.op1 + ") =")
  console.log(Math.sqrt(this.op1));
  },
  add: function() {
  console.log(this.op1 + "+" + this.op2 + "=")
  console.log(this.op1 + this.op2);
  },
  sub: function() {
  console.log(this.op1 + "-" + this.op2 + "=")
  console.log(this.op1 - this.op2);
  },
  mul: function() {
  console.log(this.op1 + "*" + this.op2 + "=")
  console.log(this.op1 * this.op2);
  },
  div: function() {
  console.log(this.op1 + "/" + this.op2 + "=")
  console.log(this.op1 / this.op2);
  },
  mod: function() {
  console.log(this.op1 + "%" + this.op2 + "=")
  console.log(this.op1 % this.op2);
  }

}

calculator.calculate();




console.log("yay");
//
var atm = new AtmMachine(100000);

function AtmMachine(amount) {
  this.amount = amount;
}

AtmMachine.prototype.getBalance = function() {
  var balance = this.amount;
  return balance;
}

AtmMachine.prototype.deposit = function(amt) {
  var balance = (this.amount + amt);
  this.amount = balance;
  return("Your balance is $" + balance);
}

AtmMachine.prototype.withdraw = function(amt) {
  var balance = (this.amount - amt);
  this.amount = balance;
  return("You withdrew: $" + amt + "." + " Your balance is $" + balance);
}


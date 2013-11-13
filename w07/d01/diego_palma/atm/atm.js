
function Machine(amount) {
  this.amount = amount;
}

var atm = new Machine(1000);

Machine.prototype.balance = function() {
 return this.amount;
}

Machine.prototype.deposit = function(deposit) {
 var total = this.amount + deposit;
 this.amount = total;
 return deposit
}

Machine.prototype.withdraw = function(withdraw) {
  var total = this.amount - withdraw;
  this.amount = total;
  return withdraw
}

Machine.prototype.continue = function(answer) {
  answer = prompt("Would you like to continue? yes/no");
  if (answer === "yes") {
    atm.getMenu();
  } else {
    alert("See you soon!")
  }
}



Machine.prototype.getMenu = function () {
  var menu = prompt("What would you like to do today? Options: balance, deposit, withdraw");
  // debugger;
  if (menu === "balance" ) {
    alert("Your balance is " + this.balance());
    this.continue();
  } else if (menu === "deposit") {
    amount = prompt("Enter the value you would like to deposit");
    depositedAmount = parseInt(amount);
    alert("You deposited " + this.deposit(depositedAmount) + " and your total balance is " + this.balance());
    this.continue();
  } else if (menu === "withdraw") {
    amount = prompt("How much money would you like to withdraw?")
    withdrawAmount = parseInt(amount);
    alert("Withdraw " + this.withdraw(withdrawAmount) + " and your total balance is " + this.balance());
    this.continue();
  } else {
    this.continue();
  }
}

atm.getMenu();
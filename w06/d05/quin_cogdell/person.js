function Person(name) {
  this.name = name;
}

Person.prototype.sayName = function() {
  console.log(this.name);
}

var p1 = new Person("Quin");
p1.sayName

var Word = function(){
  this.wordChoices = ["amorphous","dulcet","crystalline","enrapture","effervescent","epiphany","lithe","talisman","rhapsody","quiescent","tranquility","evanescent"];
  this.word = null;
}

Word.prototype.random = function(){
  var word_array = this.wordChoices;
  var length = word_array.length;
  var random_index = Math.floor(Math.random()*length)
  this.word = word_array[random_index]
  return this.word
}


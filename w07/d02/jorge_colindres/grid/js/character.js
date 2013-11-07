function Character(name){
  this.name = name;
  this.posLeft = 0;
  this.posTop = 0;
  this.addKeydownEventListeners();
}

Character.prototype.addKeydownEventListeners = function(){
  var self = this;
  $(document).on('keydown', function(e){
    self.node = $('.' + self.name);
    self.movCharacter(e);
  });
};

Character.prototype.movCharacter = function(e){
  var $pika = this.node;
  var maxRight = 1000 - 40;
  var maxBottom = ($('#pokemon-container').height() - 40);

  switch (e.which) {
    case 39: // Right
      this.posLeft >= maxRight ? this.posLeft = maxRight : this.posLeft += 5;
      $pika.css('left', this.posLeft + 'px');
      break;
    case 37: // Left
      this.posLeft <= 0 ? this.posLeft = 0 : this.posLeft -= 5;
      $pika.css('left', this.posLeft + 'px');
      break;
    case 40: // Down
      this.posTop >= maxBottom ? this.posTop = maxBottom : this.posTop += 5;
      $pika.css('top', this.posTop + 'px');
      break;
    case 38: // Up
      this.posTop <= 0 ? this.posTop = 0 : this.posTop -= 5;
      $pika.css('top', this.posTop + 'px');
      break;
  }
};

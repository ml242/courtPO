$( document ).ready(function() {

  var stage = new Kinetic.Stage({
    container: 'container',
    width: 1200,
    height: 900
  });

document.getElementById('container').addEventListener('click', function(e) {

var layer = new Kinetic.Layer();
var rectX = e.x;
var rectY = e.y;
// debugger;
var box = new Kinetic.Rect({
  x: rectX,
  y: rectY,
  width: 100,
  height: 100,
  fill: '#00D2FF',
  stroke: 'none',
  strokeWidth: 4,
  draggable: true
});

box.on('mouseover touchstart', function() {
  this.setFill('blue');
  layer.draw();
});

box.on('mouseout touchend', function() {
  this.setFill('#00D2FF');
  layer.draw();
})

console.log(rectX);
console.log(e.x);
console.log(rectY);
console.log(e.y);
layer.add(box);
stage.add(layer);
});

});
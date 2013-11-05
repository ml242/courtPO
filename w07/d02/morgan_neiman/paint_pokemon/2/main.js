$( document ).ready(function() {

  var stage = new Kinetic.Stage({
    container: 'container',
    width: 1200,
    height: 900
  });

  var layer = new Kinetic.Layer();
  var rectX = 20;
  var rectY = 20;
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
});

function newBox(){
  var rect = new Kinetic.Rect({
    x: rectX,
    y: rectY,
    width: 100,
    height: 100,
    fill: '#00D2FF',
    stroke: 'none',
    strokeWidth: 4,
    draggable: true
  });

  rect.on('mouseover touchstart', function() {
    this.setFill('blue');
    layer.draw();
  });

  rect.on('mouseout touchend', function() {
    this.setFill('#00D2FF');
    layer.draw();
  });

  layer.add(rect);
  rect.on('dragstart', newBox);
}

box.on('dragstart', newBox);

layer.add(box);
stage.add(layer);


});
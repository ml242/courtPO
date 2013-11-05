    var drawColor = 'blue';

      var layer = new Kinetic.Layer();

      var tileY = 400;
      var tileX = 0;
      var maxX = 1200;
      var maxY = 900;
      var down = false;

    $( document ).ready(function() {

      var stage = new Kinetic.Stage({
        container: 'container',
        width: 1200,
        height: 900
      });


      $( document ).mousedown(function() {
        down = true;
      }).mouseup(function() {
        down = false;
      });






      generateTiles();

  // PAINTING WITHOUT TILES
  //   var rectX = 20;
  //   var rectY = 20;
  // // debugger;
  // var box = new Kinetic.Rect({
  //   x: rectX,
  //   y: rectY,
  //   width: 100,
  //   height: 100,
  //   fill: '#00D2FF',
  //   stroke: 'none',
  //   strokeWidth: 4,
  //   draggable: true
  // });

  // box.on('mouseover touchstart', function() {
  //   this.setFill('blue');
  //   layer.draw();
  // });

  // box.on('mouseout touchend', function() {
  //   this.setFill('#00D2FF');
  //   layer.draw();
  // });

  // function newBox(){
  //   var rect = new Kinetic.Rect({
  //     x: rectX,
  //     y: rectY,
  //     width: 100,
  //     height: 100,
  //     fill: '#00D2FF',
  //     stroke: 'none',
  //     strokeWidth: 4,
  //     draggable: true
  //   });

  //   rect.on('mouseover touchstart', function() {
  //     this.setFill('blue');
  //     layer.draw();
  //   });

  //   rect.on('mouseout touchend', function() {
  //     this.setFill('#00D2FF');
  //     layer.draw();
  //   });

  //   layer.add(rect);
  //   rect.on('dragstart', newBox);
  // }

  // box.on('dragstart', newBox);

  // var circle = new Kinetic.Circle({
  //   x: 300,
  //   y: 100,
  //   radius: 10,
  //   fill: 'pink',
  //   stroke: 'none',
  //   strokeWidth: 4,
  //   draggable: true
  // });

  // function newCircle(e) {
  //   var mousePos = stage.getPointerPosition();
  //   var circ = new Kinetic.Circle({
  //     x: mousePos.x,
  //     y: mousePos.y,
  //     radius: 10,
  //     fill: 'pink',
  //     stroke: 'none',
  //     strokeWidth: 4,
  //     draggable: true
  //   });
  //   circ.on('mousedown', drawing);
  //   circ.on('mouseup', endDrawing);
  //   layer.add(circ);
  // }

  // var timer;

  // function drawing() {
  //   timer = setInterval(newCircle, 10);
  // }

  // function endDrawing() {
  //   clearInterval(timer);
  // }

  // circle.on('mousedown', drawing);
  // circle.on('mouseup', endDrawing);

  // layer.add(circle);
  // layer.add(box);

  var green = new Kinetic.Rect({
    x: 20,
    y: 20,
    width: 100,
    height: 100,
    fill: 'green',
    stroke: 'none',
    strokeWidth: 1
  });
  green.on('click', function(){
    drawColor = 'green';
  });
  layer.add(green);

  var pink = new Kinetic.Rect({
    x: 130,
    y: 20,
    width: 100,
    height: 100,
    fill: 'pink',
    stroke: 'none',
    strokeWidth: 1
  });

  pink.on('click', function() {
    drawColor = 'pink';
  });
  layer.add(pink);

  var yellow = new Kinetic.Rect({
    x: 240,
    y: 20,
    width: 100,
    height: 100,
    fill: 'yellow',
    stroke: 'none',
    strokeWidth: 1
  });

  yellow.on('click', function() {
    drawColor = 'yellow';
  });
  layer.add(yellow);

  stage.add(layer);


  });




    function generateTiles() {
      for(var yCoord = tileY; yCoord < maxY; yCoord += 100){
        for(var xCoord = tileX; xCoord < maxX; xCoord += 100){
          var tile = new Kinetic.Rect({
            x: xCoord,
            y: yCoord,
            width: 98,
            height: 98,
            fill: '#DCE8E7',
            stroke: '#FFFFFF',
            strokeWidth: 1
          });
          tile.on('mouseover touchstart', function() {
            if(down){
              this.setFill(drawColor);
              layer.draw();
              this.off('mouseout touchend');
              this.off('mouseover touchstart');
            }
            else{
              this.setFill('green');
              layer.draw();
            }
          });
          tile.on('mouseout touchend', function() {
            this.setFill('#DCE8E7');
            layer.draw();
          });
          tile.on('mousedown', function() {
            this.setFill(drawColor);
            layer.draw();
            this.off('mouseout touchend');
          })
          layer.add(tile);
        }
      }
    }


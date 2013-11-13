function Grid(rows, cols, tileWidth) {
  this.rows = rows;
  this.cols = cols;
  this.tileWidth = tileWidth;

  this.rows = [];

  var $canvas = $(".canvas");

  for (var rowIndex=0; rowIndex < row; rowIndex++) {
    var $row = $("<div>").addClass("row");
    $canvas.append($row);

    this.rows[rowIndex] = [];
    var cols = this.rows[rowIndex];

    for (var colIndex=0; colIndex<cols; colIndex++) {
      var tile = new Tile(rowIndex, colIndex);
      $row.append(tile.tileNode);

      cols[colindex] = tile;
    }
  }
}

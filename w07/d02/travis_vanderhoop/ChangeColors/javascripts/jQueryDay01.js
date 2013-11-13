
$(document).ready(function(){
    console.log('yo')
    var colorsArray = ["pink", "blue", "purple", "sandpaper", "cream", "orange"];
    var i = 0;
    $("#click-me").on("click", function(e) {
      console.log('clicky');
      if (i === colorsArray.length-1) {
        i = 0;
        $("body").attr("class", colorsArray[i]);
      } else  {
        i++;
        $("body").attr("class", colorsArray[i]);
      }
      }
    );
});


$(function(){
  $('#case-button').on('click', function(e){
   var opinion = $('#opinion-input').val();

   $.ajax({
  type: "POST",
  url: url,
  data: data,
  success: success,
  dataType: dataType
});
  });
});
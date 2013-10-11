$('#container').imagesLoaded(function(){
  $('#container').isotope({
    itemSelector : '.item',
    layoutMode : 'masonry'
  });
});
$('.datepicker').pickadate({
  formatSubmit: 'yyyy/mm/dd'
});
$('.timeago').timeago();

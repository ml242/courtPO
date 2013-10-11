var container =  $('#container');
container.imagesLoaded(function(){
  container.isotope({
    itemSelector : '.item',
    layoutMode : 'masonry'
  });
});
$('#shuffle').click(function () {
  container.isotope('shuffle');
  return false;
});
$('.datepicker').pickadate({
  formatSubmit: 'yyyy/mm/dd'
});
$('.timeago').timeago();

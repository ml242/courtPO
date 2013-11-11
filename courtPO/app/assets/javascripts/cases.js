var Cases = Cases || {}

Cases.main = function(){

  $('#gavel-home').on('click', function(e){
    Cases.grabCaseData();
  });

}

$('document').ready(Cases.main);



Cases.grabCaseData = function(){

  $.ajax({
    type: "GET",
    url: "/cases.json"
  }).done(Cases.displayCasesByTime);

}

Cases.displayCasesByTime = function(caseData){

    $.each(caseData, function(i, aCase){
      var $caseDiv = $('<div>', {class: "case-div"});
      var $ulTag = $('<ul>', {class: "case-ul"});
      var $liTag = $('<li>').text(aCase.title + '\n');
      $ulTag.append($liTag);
      $liTag = $('<li>').text(aCase.)

    }

}
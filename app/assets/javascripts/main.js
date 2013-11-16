$(document).ready(function(){
  //User type in opinion into field box
  //User press button to submit opinion
  $('#new_solution').on('submit', function(e){
    // instead of submitting form we intercept it
    e.preventDefault();
    //opinion is retrieved from input field
    var input = $('#solution_opinion').val()
      $('#solution_opinion').val("")
    //opinion is entered via ajax to the user create action
    $.ajax({
      type: "post",
      url: location.pathname + "/solutions",
      data: {
        authenticity_token: $('[name="authenticity_token"]').val(),
        opinion_input: input}
    }).done( function(solution){
         var username = $('#loggedInUser').text();
         var created = moment(new Date(solution.created_at));

        console.log("time to append this awesome JSON solution object to the page with jquery");
        console.log(solution);
        var html = '<div class="vote-' + solution.id + '">' + '<div id="vote-count-' + solution.id + '">' + solution.score + '</div>' + '<img src="/assets/icons/24/Thumb-up.png">' + '</div>' +
                    '<div class="opinion-container"><div class="opinion">' +
                    '<p>' + solution.opinion + '</p></div>' +
                    '<div class="opinion-info"> <p>- ' + username + ' - ' +
                    created.fromNow() + '</p> </div> </div>';
                   var opinion_last = $('.opinion-container').last();
                   opinion_last.after(html);
    });

    //Opinion gets to database
    //the response aka opinion is sent back to the page
    //Opinion is rendered on page
  });
})



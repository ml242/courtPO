function newCasePop() {
    var title = $( "#title" ),
      conflict = $( "#conflict" ),
      expiration = $( "#expiration" ),
      tips = $( ".validateTips" );
      $authToke = $('input[name=authenticity_token').val();

    $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 300,
      width: 350,
      modal: true,
      buttons: {
        "Create Case": function() {
            $.ajax({
                type: "POST",
                dataType: 'json',
                url: "/cases",
                data: {
                    title: title.val(),
                    conflict: conflict.val(),
                    expiration: expiration.val(),
                    authenticity_token: $authToke
                }
            }).done(
                function(data){

                  var $case = $('#case');

                  $h = $('<h1>')
                  $a = $('<a>').
                    attr('href', "/cases/" + data.id).
                    text(data.title);

                  $h.append($a);
                  $case.append($h);

                  var time = expiration.val() * 24;
                  $p2 = $('<p>').
                    text("Time remaining " + time + " hrs");
                  $case.append($p2);

                  $p3 = $('<p>').
                    text(data.conflict);
                  $case.append($p3);

                  $p1 = $('<p>').
                    attr('style', "text-align:right").
                    text("Case #" + data.id);
                  $case.append($p1);

            });
            $( this ).dialog( "close" );
        },
        Cancel: function() {
          $( this ).dialog( "close" );
        }
      },
      close: function() {
      }
    });


    $( '#new_case').on("submit", function(e){
        e.preventDefault();
      });


    $( "#create-user" )
      .button()
      .click(function() {
        // e.preventDefault();
        $( "#dialog-form" ).dialog( "open" );
      });
  };

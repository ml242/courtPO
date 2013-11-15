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
                        console.log(data, this);
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

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
                        debugger;

            $.ajax({
                type: "POST",
                contentType: "JSON",
                url: "/cases",
                data: {
                    title: title.val(),
                    conflict: conflict.val(),
                    expiration: expiration.val(),
                    authenticity_token: $authToke
                }
            }).done(
                function(){
                        console.log(this);
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

    $( "#create-user" )
      .button()
      .click(function() {
        $( "#dialog-form" ).dialog( "open" );
      });
  };

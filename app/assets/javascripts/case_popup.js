function newCasePop() {
    var title = $( "#title" ),
      conflict = $( "#conflict" ),
      expiration = $( "#expiration" ),
      tips = $( ".validateTips" );

    $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 300,
      width: 350,
      modal: true,
      buttons: {
        "Create Case": function() {

            $.ajax({
                type: "POST",
                url: "/cases.json",
                data: {
                    title: title.val(),
                    conflict: conflict.val(),
                    expiration: expiration.val()
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


        var $id = $("#vote-" + <%= solution.id %>);
        //creATE upvote image with ajax call to update
        $(document.createElement("img"))
            .attr({ src: '/assets/icons/24/Thumb-up.png', id: 'up-<%= solution.id %>' })
            .appendTo($($id))
            .click(function(e){
                e.preventDefault();
                $.ajax({
                    type: "PUT",
                    contentType: "application/json",
                    url: "<%= case_solution_path(solution.id) %>",
                    data: JSON.stringify({
                      vote: "+",
                      authenticity_token: "<%= form_authenticity_token %>"
                    })
                }).done(
                    function(xhr){
                      console.log(xhr)
                        var $id = $("#vote-" + <%= solution.id %>);
                        $vote = $("#vote-count-<%= solution.id %>").text(xhr);
            });

        });

        // $.ajax({
        //     type: "GET",
        //     dataType: "application/json",
        //     url: "<%= case_solution_path(solution.id) %>",
        //     authenticity_token: "<%= form_authenticity_token %>"
        // }).done(
        //     function(){
             //console.log(xhr)
                $vote = $('<div>', {id: "vote-count-<%= solution.id %>"}).text(<%= solution.score %>);
                $id.prepend($vote);
            // });


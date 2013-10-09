   <form action="/kittens/<%= kitten['id'] %>"" method="post"></form>

for the POST /kittens/:id/delete, i know that syntax is RESTful but I can't figure out a way to send a post request using

    <a href="/kittens/<%= kitten['id'] %>/delete">Delete Kitten</a>
        <input type="hidden" name="delete" value="<%= kitten['id'] %>">

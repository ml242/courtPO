
##Graffhound

- Quickly look up graffiti in any location (new york)

- Discover information about the artist and artwork by area.

- Site can be used while not logged in to find art by artist name, piece name, or location.

- Site can used while logged in to add art/artist, favorite art/artist, and comment on the art/artist.  



###User Stories

<table>
    <tr> 
    	<td>#</td> 
    	<td>Required or Optional</td>
    	<td>Page</td>
        <td>As a</td>
        <td>I want to</td>
        <td>So I can</td> 
        <td>Agile Pts</td>   
    </tr>
    <tr>  
    	<td>1</td>
    	<td>R</td>
        <td>Top-Level</td>
        <td>User</td>
        <td>use site logged in or not</td>
        <td>for ease of use</td>    
        <td>0</td>   
    </tr>
    <tr>  
        <td>2</td> 
    	<td>R w/O</td>
        <td>Top-Level</td>
        <td>User</td>
        <td>have menu to search by artist, piece or location (by city first, then map if time)</td>
        <td>learn more</td>    
        <td>0</td>   
    </tr>  
    <tr>  
    	<td>3</td>
    	<td>R</td>
        <td>Top-Level</td>
        <td>Guest</td>
        <td>have choice to login on every page or show status</td>
        <td>for guest or member options</td>    
        <td>0</td>   
    </tr>    
    <tr>  
    	<td>4</td>
    	<td>R</td>
        <td>Front - /</td>
        <td>Guest or Member</td>
        <td>click random rotating photo for more information</td>
        <td>discover art that I may not otherwise find</td>    
        <td>2</td>   
    </tr>    
    <tr>  
    	<td>5</td>
    	<td>R</td>
        <td>Front - /</td>
        <td>Guest or Member</td>
        <td>view and access site twitter feed</td>
        <td>keep up-to-date and stay connected to site</td>    
        <td>3</td>   
    </tr>
    <tr>  
        <td>6</td> 
    	<td>R</td>
        <td>Sign Up - /signup</td>
        <td>Guest</td>
        <td>create profile</td>
        <td>to log in</td>    
        <td>1</td>   
    </tr>
    <tr>  
        <td>6</td> 
    	<td>R</td>
        <td>Sign Up - Error - /signup</td>
        <td>Guest</td>
        <td>create profile after entering invalid info</td>
        <td>to log in</td>    
        <td>0</td>   
    </tr>
    <tr>  
        <td>7</td> 
    	<td>R</td>
        <td>Log In - /login</td>
        <td>Guest</td>
        <td>login</td>
        <td>for member features</td>    
        <td>1</td>   
    </tr>
    <tr>  
        <td>7</td> 
    	<td>R</td>
        <td>Log In - Error - /login</td>
        <td>Guest</td>
        <td>login after entering invalid info</td>
        <td>for member features</td>    
        <td>0</td>   
    </tr>
    <tr>  
        <td>8</td> 
    	<td>R</td>
        <td>User - /user/:id</td>
        <td>Member</td>
        <td>see info relative to the user (list and links to favorite pieces, artists, comments, and necessary user info(name))</td>
        <td>have home base</td>    
        <td>1</td>   
    </tr>
    <tr>      
        <td>9</td> 
    	<td>R</td>
        <td>User - /user/:id</td>
        <td>Member</td>
        <td>have option to add artist or piece</td>
        <td>to build profile (street cred)</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>10</td> 
    	<td>R</td>
        <td>Find - /artist/all</td>
        <td>Guest or Member</td>
        <td>see all artists and links</td>
        <td>find and look for more info</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>11</td> 
    	<td>R</td>
        <td>Find - /piece/all</td>
        <td>Guest or Member</td>
        <td>see all pieces and links</td>
        <td>find and look for more info</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>12</td> 
    	<td>R w/O</td>
        <td>Find - /location/all</td>
        <td>Guest or Member</td>
        <td>see all pieces by city (option to have by map)</td>
        <td>find and look for more info</td>    
        <td>1</td>   
    </tr>
    <tr>  
        <td>13</td> 
    	<td>R</td>
        <td>Show - /artist/:id</td>
        <td>Guest or Member</td>
        <td>see artist handle, bio, sample piece and comments</td>
        <td>learn more</td>    
        <td>2</td>   
    </tr>
    <tr>  
        <td>14</td> 
    	<td>R</td>
        <td>Show - /piece/:id</td>
        <td>Guest or Member</td>
        <td>see piece with comments & artist info</td>
        <td>learn more</td>    
        <td>1</td>   
    </tr>
    <tr>  
        <td>15</td> 
    	<td>R</td>
        <td>Show - /location/:id</td>
        <td>Guest or Member</td>
        <td>see random piece with comments & artist info</td>
        <td>learn more</td>    
        <td>1</td>   
   </tr>
    <tr>  
        <td>16</td> 
    	<td>R</td>
        <td>Show - /artist/:id</td>
        <td>Member</td>
        <td>add comment</td>
        <td>add to site content</td>    
        <td>1</td>   
    </tr>
    <tr>  
        <td>17</td> 
    	<td>R</td>
        <td>Show - /piece/:id</td>
        <td>Member</td>
        <td>add comment</td>
        <td>add to site content</td>
        <td>1</td>   
    </tr>
    <tr>  
        <td>18</td> 
    	<td>R</td>
        <td>Show - /artist/:id</td>
        <td>Member</td>
        <td>"favorite" artist</td>
        <td>add to profile and remember</td>    
        <td>1</td>   
    </tr>
    <tr>  
        <td>19</td> 
    	<td>R</td>
        <td>Show - /piece/:id</td>
        <td>Member</td>
        <td>"favorite" piece</td>
        <td>add to profile and remember</td>
        <td>1</td>   
    </tr>
    <tr>      
        <td>20</td> 
    	<td>R</td>
        <td>Add - /artist/new</td>
        <td>Member</td>
        <td>add new artist</td>
        <td>contribute to site db</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>21</td> 
    	<td>R</td>
        <td>Add - /piece/new</td>
        <td>Member</td>
        <td>add new piece</td>
        <td>contribute to site db</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>22</td> 
    	<td>O</td>
        <td>Edit - /user/edit</td>
        <td>Member</td>
        <td>edit my member profile</td>
        <td>update info</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>23</td> 
    	<td>O</td>
        <td>Remove - /user/destroy</td>
        <td>Member</td>
        <td>remove my info</td>
        <td>give up member access</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>24</td> 
    	<td>O</td>
        <td>Edit - /artist/edit</td>
        <td>Member</td>
        <td>edit info about artist</td>
        <td>update info</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>25</td> 
    	<td>O</td>
        <td>Remove - /artist/destroy</td>
        <td>Member</td>
        <td>remove artist info</td>
        <td>keep accurate records or right to privacy</td>    
        <td>1</td>   
    </tr>    
    <tr>
        <td>26</td> 
    	<td>O</td>
        <td>Edit - /piece/edit</td>
        <td>Member</td>
        <td>edit info about artwork</td>
        <td>update info</td>    
        <td>1</td>   
    </tr>
    <tr>
        <td>27</td> 
    	<td>O</td>
        <td>Remove - /piece/destroy</td>
        <td>Member</td>
        <td>remove artwork info</td>
        <td>keep accurate records</td>    
        <td>1</td>   
    </tr>    
</table> 

#### Week 4 - Plan

Monday:
 
- Outline of Project plan
- Using the spiral methodology,  
	- Wire Frame
	- User Stories
	- Models speked
	- user authentication
	- stub out basic routes

Tuesday:

- Finish implementing MVC
- Testing

Wednesday:

- Add the CSS
- Add extra options
- Testing

Thursday:

- Tie loose ends
- Seeding
- Testing

Friday:
 
- Seeding
- Present

####Project Core Requirements

<strong>Models</strong> at least 3 models and at most 5. Make sure they are associated correctly.

<strong>Views</strong> Use partials and view helpers to DRY up your views.

<strong>Handles invalid data</strong> Forms in your application should validate data on the backend (controllers & models) and handle incorrect inputs. Validate sign up information, verify necessary model fields are populated (not blank) for required fields, valid email addresses, etc.

<strong>Heroku</strong> Deploy your code to Heroku with a PostgreSQL database.

<strong>User Login</strong> Make sure you have a user model with basic authentication and authorization set up.

<strong>Styling Make your app look decently nice</strong>, but NOT THE TUESDAY VERSION. Think about color & typography and make sure everything is aligned properly.

<strong>Use an API</strong> (Optional) APIs add data and functionality to your app (some have gems!)


#### High Level Spiral
```
[["user login"], ["user", "songs", "purchases"], ["albums"], ["authentication"], ["artists"], ["playlists"]].each do |spiral|
    spiral.create_visual_model_without_tables
    spiral.create_visual_model_with_tables
    spiral.draw_wireframe
        - Drawing what ALL and EVERY screen that you want to exist looks like and know what screen goes to what other screen.
    spiral.write_user_stories
        - as a X
        - I want to Y
        - so that I can Z
    spiral.tell_it_so_a_5th_grader_can_do_it
    spiral.pseudocode
    spiral.code
end
```


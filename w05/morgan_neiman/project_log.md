**User Stories Etc / Day 1 **

Lyrics have many :meanings
Belong to :song

Meanings belong to :lyrics
belong to :user

Songs have many :lyrics

Song:

release date,
album,
name

Lyric:

text,
song_id

Comment:

body,
time_created,
lyric_id,
user_id

as a not logged in user
I want to:
see songs so that i can read lyrics

read lyrics
so that i can learn their meanings

comment anonymously
so that I can contribute and interact with the site, without logging in

stream the songs
so I can hear the music I am reading lyrics to

as a logged in user i want to
see songs
so that I can read lyrics

read lyrics
so that I can learn their meanings

comment
so that I can contribute to the site

stream the songs
so that I can hear what I'm reading

see the comments i added
so that I can update and delete them

edit those comments
in case I change my mind

delete those comments
so that my edits are not permanent

as a user I want to log in with twitter
so that I can sign up for the site without having to create a new account

as a user I want to be able to tweet my lyrics and comments that I made
so that I can share my interaction


*rating for all of the above is 1 - very quick and easy*

********


**user flow**

log in > twitter authentication > home page

look at songs > hover over lyrics to see meanings > click on lyrics to see individual lyric > have options to comment and view all comments

when you click on a comment > takes you to a page to see just the comment and who wrote it

*********


**more difficult tasks**

as a logged in user I want to be able to vote interpretations up or down so that there is some accountability for the quality of comment

click on lyric > click on comment > click vote up or vote down > sent to comment page which displays score > option to go back to song, lyric, or scoreboard

********



as any user I want to be able to see a scoreboard of best interpretations so that I can browse the site based on quality

link to scoreboard on home page > taken to scoreboard > ability to click on any interpretation and see the lyric and song it was from, links to lyric, song, scoreboard

********

as an admin I want to be able to upload new ducky songs from a separate page so that I can add new tracks without working in the seed file or database 

my account will be known as admin > will display a link to upload a new song >
form for lyrics that splits them into individual lines and stores them as lyrics

*********

as an admin I want to be able to moderate comments by editing or deleting any of them even if they are not mine, so that I can control the quality of the comments on the site

if i am logged in as admin, every comment should display an edit/delete button


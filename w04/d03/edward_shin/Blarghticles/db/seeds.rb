Article.delete_all
Comment.delete_all

a1 = Article.create(
  title: 'gettin jiggy wit it', body: 'On your mark ready set lets go
Dance floor pro I know you know
I go psycho when my new joint hit
Just cant sit
Gotta get jiggy wit it
Ooh thats it
Now honey honey come ride
DKNY all up in my eye
You gotta Prada bag with alotta stuff in it
Give it to your friend lets spin
Everybody lookin at me
Glancin the kid
Wishin they was dancin a jig
Here with this handsome kid
Ciga-cigar right from Cuba-Cuba
I just bite it
Its for the look I dont light it
Illway the an-may on the ance-day oor-flay
Givin up jiggy make it feel like foreplay
Yo my car-dee-o is Infinit-
Ha ha
Big Willie Styles all in it
Gettin Jiggy Wit It'
)

a2 = Article.create(
  title: 'Born Sinner', body: 'Spinning in circles, live my life without rehearsal If I die today my nigga was it business? Was it personal? Should this be my last breath Im blessed cause it was purposeful Never got to church to worship lord but please be merciful You made me versatile, well-rounded like cursive Know you chose me for a purpose, I put my soul in these verses Born sinner, was never born to be perfect Sucka for women licking their lips and holding these purses Back when we ran the streets who would think we grow to be murderers Teachers treated niggas as if they totally worthless And violent, and hopeless I saw but never noticed that a college point is right to Be all that you can be posters Rest in peace to Tiffany, I dont know if this is the realest shit I wrote But know the realest nigga wrote this And signed it, and sealed it in a envelope and knew one day youd find it And knew one day that youd come back and rewind this, singing...'
)
c1 = Comment.create(body: 'that was corny')
c2 = Comment.create(body: 'best song ever')
c3 = Comment.create(body: 'i hate this song')
c4 = Comment.create(body: 'I want a big mac')

a1.comments << c1 << c2
a2.comments = [c3, c4]
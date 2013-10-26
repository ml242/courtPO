# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.delete_all
Piece.delete_all
User.delete_all
Favorite.delete_all
Comment.delete_all
Pic.delete_all

a1 = Artist.create(:name => "Banksy", :bio => "Banksy is a pseudonymous United Kingdom-based graffiti artist, political activist, film director, and painter.
His satirical street art and subversive epigrams combine dark humour with graffiti done in a distinctive stencilling technique. Such artistic works of political and social commentary have been featured on streets, walls, and bridges of cities throughout the world")

p1 = Piece.create(:name => "You Complete Me..",:birth => "10/3/2013", :location => "24th st & 6th ave, New York, NY")
z1 = Pic.create(:url => "http://4.bp.blogspot.com/-Utd2sTXzuBs/Uk1xpz1O3NI/AAAAAAAAE4Y/XAByLWkCdns/s640/banksyny-558564037259684952_564287810.jpeg")
z2 = Pic.create(:url => "http://2.bp.blogspot.com/-2wmLQhDkSRA/Uk1uKWZRstI/AAAAAAAAE4M/FFasqzz7N4A/s640/streetartnews_banksy_new_york_city-23.jpg")


p2 = Piece.create(:name => "Ghetto 4 Life",:birth => "10/22/2013", :location => "153rd st and elton, bronx, ny")
z3 = Pic.create(:url => "http://4.bp.blogspot.com/-pFLZzknb0q4/UmU5M3r6FyI/AAAAAAAAF8Y/Z9k9HhXoXhg/s640/SIZED.Mon-21-WIDE-private.jpg")
z4 = Pic.create(:url => "http://4.bp.blogspot.com/-fBQWuviJ5yo/UmU5Mj8SpSI/AAAAAAAAF8c/0okj2iguyBA/s640/sized-mon-21-tight-private.jpg")



a2 = Artist.create(:name => "Swoon", :bio => "Swoon is a street artist born in New London, Connecticut, and raised in Daytona Beach, Florida. She moved to New York City at age nineteen, and specializes in life-size wheatpaste prints and paper cutouts of figures. Swoon, real name Caledonia Dance Curry, studied painting at the Pratt institute in Brooklyn and started doing street art around 1999.")
p3 = Piece.create(:name => "streets",:birth => "10/24/2013", :location => "Bowery & Houston, New York, NY 10012")
z5 = Pic.create(:url => "http://gothamist.com/attachments/arts_jen/BOWERYMURALNEW0613.jpeg")


# p4 = Piece.create(:name => "nope" ,:birth => "5/2/2012", :location => "20 Prince, New York, NY 10012")
# z6 = Pic.create(:url => "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSJN5D2opMOMZvtJSi0v-Zmf6ofnAxKAj_mimagRZOsi3FBgrnngQ")


z1.piece = p1
z2.piece = p1

z3.piece = p2
z4.piece = p2

z5.piece = p3

z1.save
z2.save
z3.save
z4.save
z5.save

p1.artist = a1
p2.artist = a1
p3.artist = a2

p1.save
p2.save
p3.save


u1 = User.create(:username => "matt", :email => "matt@hew.com", :password => "password1", :password_confirmation => "password1")
u2 = User.create(:username => "mark", :email => "mark@hew.com", :password => "password2", :password_confirmation => "password2")
u3 = User.create(:username => "luke", :email => "luke@hew.com", :password => "password3", :password_confirmation => "password3")
u4 = User.create(:username => "john", :email => "john@hew.com", :password => "password4", :password_confirmation => "password4")
u5 = User.create(:username => "jim", :email => "jim@hew.com", :password => "password5", :password_confirmation => "password5")

f1 = Favorite.new
f2 = Favorite.new
f3 = Favorite.new
f4 = Favorite.new
f5 = Favorite.new

f1.user = u1
f1.piece = p1
f1.save
f2.user = u2
f2.piece = p2
f2.save
f3.user = u4
f3.piece = p1
f3.save
f4.user = u1
f4.piece = p2
f4.save
f5.user = u3
f5.piece = p3
f5.save

c1 = Comment.create(:entry => "unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum p")
c2 = Comment.create(:entry => "Ipsum is that it has a more-or-less normal distribution of letters, as opposed to u")
c3 = Comment.create(:entry => "consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the u0.32 and 1.10.33")
c4 = Comment.create(:entry => "not bad...")

c1.user = u1
c1.piece = p1
c1.save

c2.user = u1
c2.piece = p2
c2.save

c3.user = u2
c3.piece = p1
c3.save

c4.user = u4
c4.piece = p3
c4.save

p1 = Piece.create(:name => "The Street is in Play" ,:birth => "10/12/2013",:location => "18 Allen St, ny, ny")
u1 = Pic.create(:url => "http://www.metro.us/wp-content/uploads/2013/10/banksy-day1-the-street-is-in-play-NYC.jpg")
u1.piece = p1
u1.save
p1.artist = a1
p1.save


p1 = Piece.create(:name => "Better Out Than In" ,:birth => "10/12/2013",:location => "Jay St & Staple St, New York, NY 10013")
u1 = Pic.create(:url => "http://blogs.artinfo.com/artintheair/files/2013/10/banksy-tribeca-1.jpg")
u1.piece = p1
u1.save
p1.artist = a1
p1.save



p1 = Piece.create(:name => "Ronald McDonald",:birth => "10/12/2013",:location => "Delancey and Essex Streets, ny, ny")
u1 = Pic.create(:url => "http://www.adweek.com/files/imagecache/node-blog/blogs/banksy-mcdonalds-hed-2013.jpg")
u1.piece = p1
u1.save
p1.artist = a1
p1.save


p1 = Piece.create(:name => "Concrete Confessional",:birth => "10/12/2013",:location => "east village, ny")
u1 = Pic.create(:url => "http://img.gawkerassets.com/img/19309i1h59dfojpg/ku-bigpic.jpg")
u1.piece = p1
u1.save
p1.artist = a1
p1.save

# ####the one I saw
# p1 = Piece.create(:name => "Sirens of the Lambs",:birth => "10/12/2013",:location => )
# u1 = Pic.create(:url => "http://4.bp.blogspot.com/-MeCmZm_li5E/UlbrY53iTtI/AAAAAAAAFU0/M7NF7SBXKH8/s640/banksy_possible_Truck_installation_newyorkcity-6.jpg")
# u1.piece = p1
# u1.save
# p1.artist = a1
# p1.save

# p1 = Piece.create(:name => "Waiting in vain...at the door of the club",:birth => "10/12/2013",:location => "Larry Flynt's NY Hustler Club, 641 West 51st Street")
# u1 = Pic.create(:url => "http://l2.yimg.com/bt/api/res/1.2/2OPbfIQG9KL0OdRwFBpKfA--/YXBwaWQ9eW5ld3M7Zmk9ZmlsbDtoPTQyMTtweG9mZj01MDtweW9mZj0wO3E9NzU7dz03NDk-/http://l.yimg.com/os/publish-images/news/2013-10-24/84a11c99-4d2a-4deb-ba0d-16f1974ffbeb_2-CROPPED-man-with-flowers-01-WEB-private.jpg")
# u1.piece = p1
# u1.save
# p1.artist = a1
# p1.savs



# a1 = Artist.create(:name => "Keith Haring",:bio => "Keith Allen Haring (May 4, 1958 – February 16, 1990) was an artist and social activist whose work responded to the New York City street culture of the 1980s by expressing concepts of birth, death and war. Haring's imagery has become a widely recognized visual language of the 20th century." )
# p1 = Piece.create(:name => "Crack Is Wack Playground",:birth => "10/12/2013",:location => "Harlem River Drive at E. 128th St.")
# u1 = Pic.create(:url => "http://media40.wnyc.net/media/photologue/photos/haring_1.jpg")
# u2 = Pic.create(:url => "http://media40.wnyc.net/media/photologue/photos/haring_2_.jpg")
# u1.piece = p1
# u2.piece = p1
# u1.save
# u2.save
# p1.artist = a1
# p2.artist = a1
# p1.save
# p2.save

# & COST
a1 = Artist.create(:name => "REVS",:bio => "Revs is the tag name of a New York City graffiti artist whose wheat paste stickers, roller pieces, murals, sculptures, and spray-painted diary entries have earned him over the course of two decades the reputation of an artist provocateur. Revs, whose real name is unknown, is perhaps most widely known for his collaborating in the 90's with another graffiti writer, Adam Cost, of Queens.")
p1 = Piece.create(:name => "Signed Roller Piece",:birth => "10/12/2013",:location => "High Line, meatpacking dist, nyc")
u1 = Pic.create(:url => "http://allcitystreetart.com/wp-content/uploads/2011/06/revscost_highline.png")
u1.piece = p1
u1.save
p1.artist = a1
p1.save



a9 = Artist.create(:name => "FIVE POINTZ",:bio => "5 Pointz: The Institute of Higher Burnin' or the 5Pointz Aerosol Art Center, Inc.is an American outdoor art exhibit space in Long Island City, New York, considered to be the world's premiere graffiti mecca, where aerosol artists from around the globe paint colorful pieces on the walls of a 200,000-square-foot (19,000 m2) factory building.")
p1 = Piece.create(:name => "many",:birth => "10/12/2013",:location => "45-46 Davis Street, off Jackson Avenue, Long Island City, Queens")
u1 = Pic.create(:url => "http://inhabitat.com/nyc/wp-content/blogs.dir/2/files/2012/01/5-Pointz-Demolition-Queens-537x383.jpg")
u2 = Pic.create(:url => "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR5ffkpvIso_lBDUl7epF1TiqVdzcFy90a_NPanh7Fou1Ya4e-F")
u3 = Pic.create(:url => "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRAzzoJSSO3W8gttFL-z96TtFBShzzjRDSOYIKKvzplI3eOEogVSg")
u1.piece = p1
u2.piece = p1
u3.piece = p1
u1.save
u2.save
u3.save
p1.artist = a9
p1.artist = a9
p1.artist = a9
p1.save
p1.save
p1.save


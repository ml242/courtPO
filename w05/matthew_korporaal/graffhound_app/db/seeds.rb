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

a1 = Artist.create(:name => "sambi", :bio => "A real cooool guy")
a2 = Artist.create(:name => "lemme", :bio => "A real superr guy")

p1 = Piece.create(:name => "yes",:birth => "1/2/2012", :location => "30 Stanton, New York, NY 10012", :url => "http://onebigphoto.com/uploads/2011/10/graffiti-street.jpg")
p2 = Piece.create(:name => "maybe",:birth => "1/2/2012", :location => "90 Elizabeth, New York, NY 10012", :url => "http://komplexgraphix.com/wp-content/uploads/2012/05/sirum_graffiti-wall-art_50.jpg")
p3 = Piece.create(:name => "sometimes",:birth => "1/2/2012", :location => "70 Bowery, New York, NY 10012", :url => "http://images3.alphacoders.com/180/180455.jpg")
p4 = Piece.create(:name => "nope" ,:birth => "5/2/2012", :location => "20 Prince, New York, NY 10012", :url => "http://images2.alphacoders.com/564/56492.jpg")

p1.artist = a1
p2.artist = a1
p3.artist = a2
p4.artist = a2
p1.save
p2.save
p3.save
p4.save

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
f4.piece = p1
f4.save
f5.user = u3
f5.piece = p3
f5.save

c1 = Comment.create(:entry => "I really like this stuff")
c2 = Comment.create(:entry => "the best evarrrr")
c3 = Comment.create(:entry => "show me more")
c4 = Comment.create(:entry => "not bad...")

c1.user = u1
c1.piece = p1
c1.save

c2.user = u1
c2.piece = p4
c2.save

c3.user = u2
c3.piece = p1
c3.save

c4.user = u4
c4.piece = p3
c4.save


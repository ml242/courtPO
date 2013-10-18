# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
a1 = Article.create(title: "First Blog Post", body: "I'm going to write so many interesting things!")
a2 = Article.create(title: "Second Blog Post", body: "just kidding. I have nothing to say")
Comment.delete_all
c1 = Comment.create(body: "Yeah! What an exciting project to embark on!")
c2 = Comment.create(body: "I'm really happy for you")
c3 = Comment.create(body: "Yeah, you are pretty boring")

a1.comments << c1 << c2
a2.comments << c3

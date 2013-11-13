# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
Comment.delete_all
Tag.delete_all

t1 = Tag.create(body:'Cool')
t2 = Tag.create(body:'Favs')
t3 = Tag.create(body:'Awesomeness')

a1 = Article.create(title: 'Happiness', body:'Family,Friends,Anime,Reading,Tchotkes,Fun')
a2 = Article.create(title: 'Russian Authors', body:'Fyodor Dostoyevsky,Nikolai Gogol,Anton Chekhov,Leo Tolstoy')
a3 = Article.create(title: 'Places To Go', body:'Japan,Korea,China,Cambodia,Thailand,Germany,Greece')

a1.tags << [t1,t2]
a2.tags << [t2]
a3.tags << [t2,t3,t1]

c1 = Comment.create(body:"This is awesome", article_id:18)
c2 = Comment.create(body:"This is pretty true", article_id:18)
c3 = Comment.create(body:"Where is career?", article_id:18)
c4 = Comment.create(body:"Where is Pushkin?", article_id:18)
c5 = Comment.create(body:"Best of the best!", article_id:19)
c6 = Comment.create(body:"Yup!", article_id:20)
c7 = Comment.create(body:"JAPAANNNN", article_id:20)
c8 = Comment.create(body:"Dont miss out on Bhutan", article_id:20)
c9 = Comment.create(body:"Great List", article_id:20)
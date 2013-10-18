# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Author.create(
  :name => 'Harrison',
  :email => 'fijimunkii@gmail.com'
)

a2 = Article.create(
  :name => 'Just another postastic blog',
  :content => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, facilis obcaecati veniam officia alias culpa laborum qui placeat a ipsa pariatur tenetur doloremque similique magnam sapiente cupiditate ex neque explicabo.',
  :author_id = a1.id
)

a3 = Article.create(
  :name => 'Just another postastic blog',
  :content => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, facilis obcaecati veniam officia alias culpa laborum qui placeat a ipsa pariatur tenetur doloremque similique magnam sapiente cupiditate ex neque explicabo.',
  :author_id = a1.id
)

Comment.create(
  :author => 'some guy',
  :content => 'some comment',
  :article_id = a2.id
)

Comment.create(
  :author => 'another guy',
  :content => 'another comment',
  :article_id => a3.id
)

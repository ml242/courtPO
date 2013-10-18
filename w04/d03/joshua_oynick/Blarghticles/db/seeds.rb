# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all
Comment.delete_all

a1 = Article.create :title => 'Article', :body => 'Nulla vitae elit libero, a pharetra augue.'
a2 = Article.create :title => 'Another Article', :body => 'Maecenas sed diam eget risus varius blandit sit amet non magna.'

Comment.create :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', :article_id => a1.id
Comment.create :body => 'Sed posuere consectetur est at lobortis.', :article_id => a1.id
Comment.create :body => 'Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', :article_id => a2.id


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all

Article.create(title: 'Shutdown Over', body: 'The United States government sputtered back to life Thursday morning after President Obama and Congress ...')
Article.create(title: 'Obama Calls for Cooperation', body: 'President Obama urged his Republican adversaries to view the end of the government shutdown ...')

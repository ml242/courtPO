require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require 'pg'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "KS",
  :password => "",
  :database => "wdinstagram_db"
)


class Entry < ActiveRecord::Base

end

p "Enter a name"
@name = gets.chomp

p "Enter a photo url"
@photo = gets.chomp

p "Enter a date YYYY-MM-DD"
@date = gets.chomp


entry1 = Entry.new
entry1.author = @name
entry1.photo = @photo
entry1.date_taken = @date
entry1.save

binding.pry

#lists all entries
Entry.all

From 'entries' WHERE id = 1;
Entry.find(1)


require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

 #before do
ActiveRecord::Base.logger = Logger.new( STDOUT )
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "natashagreen",
  :password => "",
  :database => "wdigram_db"
)
#end

#after do
  ActiveRecord::Base.connection.close
#end

class Entry < ActiveRecord::Base
end

 get '/' do
    @entries = Entry.all
    erb :index
  end

get "/new" do

  erb :new
end

post "/new" do
  @entries = Entry.new(params[:entry])
  if @entry.save
    redirect "entry/#{@entry.id}"
  else
    erb :new
  end
end

get "/entry/:id" do
  @entry = Entry.find_by_id(params[:id])
  erb :show
end


=begin
Index (Displays all entries)
New (Displays a form to create a new entry)
Create (Creates a new entry and saves it to the database)
Show (Displays one particular entry)
=end
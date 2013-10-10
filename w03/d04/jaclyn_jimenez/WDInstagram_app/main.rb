require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative 'active_record'

# Actions:
# Index (Displays all entries)
# New (Displays a form to create a new entry)
# Create (Creates a new entry and saves it to the database)
# Show (Displays one particular entry)
# [#<Entry id: 1, name: "my awesome photo!",
# photo: "http://placekitten.com/g/500/400",
# date_taken: "2013-10-10">]

get '/' do #index
  #This page displays all entries
  @post = Entry.all
  ActiveRecord::Base.connection.close
  erb :index
end

get '/new' do #new
  erb :new
end

post '/new' do #create
  "adds entry collected from post to DB, redirects to '/'"
  @name = params['name']
  @date = params['date']
  @photo = params['photo']
  e = Entry.new({name: @name, date_taken: @date, photo: @photo})
  e.save
  ActiveRecord::Base.connection.close
  redirect to '/'
end

get '/show/:id' do #show
  @id = params[:id]
  @post = Entry.find(@id)
  ActiveRecord::Base.connection.close
  erb :show
end





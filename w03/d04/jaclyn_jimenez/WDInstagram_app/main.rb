require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative 'active_record'

after do
  ActiveRecord::Base.connection.close
end

get '/' do #index
  @post = Entry.all
  ActiveRecord::Base.connection.close
  erb :index
end

get '/new' do #new
  erb :new
end

post '/' do #create
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





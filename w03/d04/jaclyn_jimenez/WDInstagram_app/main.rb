require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative 'active_record'

after do
  ActiveRecord::Base.connection.close
end

get '/' do #home
  erb :home
end

get '/photos' do #view photos
  @post = Entry.all
  erb :index
end

get '/photos/new' do #new
  erb :new
end

post '/photos' do #create
  @name = params['name']
  @date = params['date']
  @photo = params['photo']
  e = Entry.new({name: @name, date_taken: @date, photo: @photo})
  e.save
  @new_photo = e.id
  ActiveRecord::Base.connection.close
  redirect to "/photos/#{@new_photo}"
end

get '/photos/:id' do #show
  @id = params[:id]
  @post = Entry.find(@id)
  ActiveRecord::Base.connection.close
  erb :show
end

post '/photos/:id/delete' do #delete
  @id = params[:id]
  Entry.find(@id).destroy
  ActiveRecord::Base.connection.close
  redirect to '/photos'
end

get '/photos/:id/edit' do #edit photo
  @id = params[:id]
  @entry = Entry.find(@id)
  erb :edit
end

post '/photos/:id/edit' do #updates
  @id = params[:id]
  e = Entry.find(@id)
  @name = params['name']
  @date = params['date']
  @photo = params['photo']
  e.name = @name
  e.date_taken = @date
  e.photo = @photo
  e.save
  redirect to "/photos/#{@id}"
end




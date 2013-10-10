require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

# before '/*' do
  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Ducky",
  :password => "",
  :database => "instagram_db"
  )
# # end

helpers do
  def before
  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Ducky",
  :password => "",
  :database => "instagram_db"
  )
  end
  def after
    ActiveRecord::Base.connection.close
  end
end


# after '/*' do
#   puts "RARFACE"
#   ActiveRecord::Base.connection.close
# end

class Entry < ActiveRecord::Base
end

class User < ActiveRecord::Base
end


get '/' do
  before
  @entries_array = Entry.order("id DESC").all
  after
  erb :index
end

get '/new' do
  before
  @user_array = User.all
  after
  erb :new
end

post '/new' do
  before
  e1 = Entry.new
  e1.author_id = params[:username]
  e1.photo = params[:photo]
  e1.date_taken = params[:date_taken]
  e1.save
  after
  redirect to '/'
end

get '/show/:id' do
  before
  id = params[:id].to_i
  @entry = Entry.find(id)
  after
  erb :single_photo
end

get '/sign_up' do
  erb :sign_up
end

post '/sign_up' do
  before
  username = params[:username]
  if User.exists?(username: username)
    redirect to '/username_error'
  else
    user = User.new
    user.username = username
    user.save
    redirect to '/'
  end
  after
end

get '/username_error' do
  erb :username_error
end

get '/:username' do
  before
  username = params[:username]
  user = User.where("username = '#{username}'")
  user_id = user.first.id.to_i
  @author = user.first.username
  @user_photos = Entry.where(author_id: user_id)
  after
  erb :username
end

get '/update/:id' do
  before
  id = params[:id].to_i
  @user_array = User.all
  @photo = Entry.find(id)
  after
  erb :update_photo
end

post '/update/:id' do
  before
  id = params[:id].to_i
  e1 = Entry.find(id)
  e1.author_id = params[:username]
  e1.photo = params[:photo]
  e1.date_taken = params[:date_taken]
  e1.save
  after
  redirect to '/'
end

get '/delete/:id' do
  before
  id = params[:id].to_i
  @entry = Entry.find(id)
  after
  erb :delete_confirmation
end

post '/delete/:id' do
  before
  choice = params[:delete]
  user_id = params[:id].to_i
  if choice == "yes"
    Entry.find(user_id).destroy
  end
  after
  redirect to '/'
end
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
  erb :new
end

post '/new' do
  before
  e1 = Entry.new
  e1.author = params[:author]
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

post 'sign_up' do
  before

  after
end
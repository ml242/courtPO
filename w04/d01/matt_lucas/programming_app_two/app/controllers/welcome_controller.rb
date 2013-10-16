class WelcomeController < ApplicationController
  def index
    "Hello"
  end

  def programmers
    if request.get?
      @list = Programmer.all
    elsif request.post?
      @programmer = Programmer.create
      @programmer.github = params["github"]
      @programmer.twitter = params["twitter"]
      @programmer.img_url = params["img_url"]
      @programmer.name = params["name"]
      Programmer.save
      redirect_to('/programmers')
    end
  end

  def new
    @programmer = Programmer.create
  end

  def id
    id = params[:id]
    data = Programmer.find(id)
    @id = data["id"]
    @name = data["name"]
    @twitter = data["twitter"]
    @img_url = data["img_url"]
    @githubs = data["githubs"]
  end

  def edit
    id = params[:id]
    @data = Programmer.find(id)
  end


end







# post '/programmers' do
#   data = Programmer.create
#   twitter = params["twitter"]
#   img_url = params["img_url"]
#   name = params["name"]
#   gitinput = params["githubs"]
#   #retrieve the post data and input it into DB
#   data.twitter = twitter
#   data.name = name
#   data.img_url = img_url
#   data.githubs = gitinput
#   data.save
#   binding.pry
#   redirect to('/programmers/id')
# end
class ProgrammersController < ApplicationController

def index
 @programmers = Programmer.all
end

def show
  @name = params[:tiger]
  @twitter_pic = params[:twitter_pic]
  @twitter_username = params[:twitter_username]
  @github = params[:github]
end

end
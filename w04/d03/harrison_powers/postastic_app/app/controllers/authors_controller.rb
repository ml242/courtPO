class AuthorsController < ApplicationController
  def new
  end

  def create
    a1 = Author.create params[:author]
    redirect_to "/authors/#{a1.id}"
  end

  def update
    a1 = Author.find(params[:id]).update params[:author]
    redirect_to "/authors/#{params[:id]}"
  end

  def edit
    @author = Author.find params[:id]
  end

  def destroy
    Author.find(params[:id]).destroy
    redirect_to "/authors"
  end

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find params[:id]
  end
end

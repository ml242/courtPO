class ProgrammerController < ApplicationController

  # GET '/programmers'
  def index
    @programmers = Programmer.all
  end

  # GET '/programmers/:id'
  def show
    id = params[:id]

    @programmer = Programmer.find(id)
  end

end
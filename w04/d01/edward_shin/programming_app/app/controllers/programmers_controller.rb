class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
  end

  def show
    id = params["id"]
    @programmer_info = Programmer.find(id)
  end
end
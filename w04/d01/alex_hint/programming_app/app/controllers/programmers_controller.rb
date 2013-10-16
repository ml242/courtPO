class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
  end

  def single_programmer
    id = params[:id]
    @programmer = Programmer.find(id)
  end
end
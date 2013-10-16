class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
  end

  def id
    @id = params[:id]
    @programmer = Programmer.find(id)
  end


end

class ProgrammersController < ApplicationController

  def index
    @profiles = Programmer.all
  end

  def show
    id = params[:id]
    @programmer = Programmer.find("#{id}")
  end

  def edit
  end

  def delete
    id = params[:id]
    @programmer = Programmer.delete("#{id}")
  end

end

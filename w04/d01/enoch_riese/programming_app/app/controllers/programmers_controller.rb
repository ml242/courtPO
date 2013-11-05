class ProgrammersController < ApplicationController
  def all
    @list = Programmer.all
  end
  def by_id
    @prog = Programmer.find(params[:id])
  end
end
